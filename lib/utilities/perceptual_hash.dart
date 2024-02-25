import 'package:image/image.dart';
import 'dart:math';

/// Algorithm class for comparing images with the perceptual hash method
///
/// Images are grayscaled and resized to 32x32. Then they are passed through a 1-dimension discrete cosine transformation.
/// The top 8x8 is only accounted for since it gives the generalized frequency of the image. With this, a hash is created.
///
///
/// * Applications in digital forensics, copyright protection, and media file search
/// * Works well with images of any dimension and aspect ratio
/// * Comparing image fingerprints
/// * Images can be rotated
/// * Does not handle transparent pixels
/// * Returns percentage diffence (0.0 - no difference, 1.0 - 100% difference)
///

/// Organizational class for storing [src1] and [src2] data.
/// Fields are RGBA values
class Pixel {
  final int _red;
  final int _green;
  final int _blue;
  final int _alpha;

  Pixel(this._red, this._green, this._blue, this._alpha);

  @override
  String toString() {
    return 'red: $_red, green: $_green, blue: $_blue, alpha: $_alpha';
  }
}

/// Organizational class for storing a pair of generic
/// objects [T1] and [T2]
class Pair<T1, T2> {
  T1 _first;
  T2 _second;

  Pair(this._first, this._second);
}


class PerceptualHash {
  static const int _size = 32;

  static String generateHash(Image src) {
    final bytesPerPixel = 4;
    final pixelList = [];
    var bytes = src.getBytes();
    for (var i = 0; i <= bytes.length - bytesPerPixel; i += bytesPerPixel) {
      pixelList.add(Pixel(bytes[i], bytes[i + 1], bytes[i + 2], bytes[i + 3]));
    }
    return calcPhash(pixelList);
  }

  static double compareHashes(String hash1, String hash2){
    return _hammingDistance(hash1, hash2);
  }

  ///Resize and grayscale images
  static double compare(Image src1, Image src2) {
    src1 = copyResize(src1, height: 32, width: 32);
    src2 = copyResize(src2, height: 32, width: 32);

    var _pixelListPair;

    _pixelListPair = Pair([], []);

    // Bytes for [src1] and [src2]
    var bytes1 = src1.getBytes();
    var bytes2 = src2.getBytes();
    final bytesPerPixel = 4;

    for (var i = 0; i <= bytes1.length - bytesPerPixel; i += bytesPerPixel) {
      _pixelListPair._first
          .add(Pixel(bytes1[i], bytes1[i + 1], bytes1[i + 2], bytes1[i + 3]));
    }

    for (var i = 0; i <= bytes2.length - bytesPerPixel; i += bytesPerPixel) {
      _pixelListPair._second
          .add(Pixel(bytes2[i], bytes2[i + 1], bytes2[i + 2], bytes2[i + 3]));
    }

    // super.compare(src1, src2);

    var hash1 = calcPhash(_pixelListPair._first);
    var hash2 = calcPhash(_pixelListPair._second);

    return _hammingDistance(hash1, hash2);
  }

  /// Helper function used by subclasses to return hamming distance between two hashes
  static double _hammingDistance(String str1, String str2) {
    var distCounter = (str1.length - str2.length).abs();
    var smaller = min(str1.length, str2.length);
    var larger = max(str1.length, str2.length);

    for (var i = 0; i < smaller; i++) {
      distCounter += str1[i] != str2[i] ? 1 : 0;
    }

    return pow((distCounter / larger), 2).toDouble();
  }

  /// Helper function which computes a binary hash of a [List] of [Pixel]
  static String calcPhash(List pixelList) {
    var bitString = '';
    var matrix = List<dynamic>.filled(32, 0);
    var row = List<dynamic>.filled(32, 0);
    var rows = List<dynamic>.filled(32, 0);
    var col = List<dynamic>.filled(32, 0);

    var data = unit8ListToMatrix(pixelList); //returns a matrix used for DCT

    for (var y = 0; y < _size; y++) {
      for (var x = 0; x < _size; x++) {
        var color = data[x][y];

        row[x] = getLuminanceRgb(color._red, color._green, color._blue);
      }

      rows[y] = calculateDCT(row);
    }
    for (var x = 0; x < _size; x++) {
      for (var y = 0; y < _size; y++) {
        col[y] = rows[y][x];
      }

      matrix[x] = calculateDCT(col);
    }

    // Extract the top 8x8 pixels.
    var pixels = [];

    for (var y = 0; y < 8; y++) {
      for (var x = 0; x < 8; x++) {
        pixels.add(matrix[y][x]);
      }
    }

    // Calculate hash.
    var bits = [];
    var compare = average(pixels);

    for (var pixel in pixels) {
      bits.add(pixel > compare ? 1 : 0);
    }

    bits.forEach((element) {
      bitString += (1 * element).toString();
    });

    return BigInt.parse(bitString, radix: 2).toRadixString(16);
  }

  ///Helper funciton to compute the average of an array after dct caclulations
  static num average(List pixels) {
    // Calculate the average value from top 8x8 pixels, except for the first one.
    var n = pixels.length - 1;
    return pixels.sublist(1, n).reduce((a, b) => a + b) / n;
  }

  ///Helper function to perform 1D discrete cosine tranformation on a matrix
  static List calculateDCT(List matrix) {
    var transformed = List<num>.filled(32, 0);
    var _size = matrix.length;

    for (var i = 0; i < _size; i++) {
      num sum = 0;

      for (var j = 0; j < _size; j++) {
        sum += matrix[j] * cos((i * pi * (j + 0.5)) / _size);
      }

      sum *= sqrt(2 / _size);

      if (i == 0) {
        sum *= 1 / sqrt(2);
      }

      transformed[i] = sum;
    }

    return transformed;
  }

  ///Helper function to convert a Unit8List to a nD matrix
  static List unit8ListToMatrix(List pixelList) {
    var copy = pixelList.sublist(0);
    pixelList.clear();

    for (var r = 0; r < _size; r++) {
      var res = [];
      for (var c = 0; c < _size; c++) {
        var i = r * _size + c;

        if (i < copy.length) {
          res.add(copy[i]);
        }
      }

      pixelList.add(res);
    }

    return pixelList;
  }

  @override
  String toString() {
    return 'Perceptual Hash';
  }
}