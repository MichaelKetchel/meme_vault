import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'dart:async';

class Picker extends StatefulWidget {
  const Picker({super.key});

  @override
  State<Picker> createState() => _PickerState();
}

class _PickerState extends State<Picker> {
  // File? _imageFile;
  InputImage? inputImage;
  String _extractedText = "";

  Future _processImage(inputImage) async {
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
    setState(() {
      _extractedText = "";
    });
    // String text = recognizedText.text;
    for (TextBlock block in recognizedText.blocks) {
      // final Rect rect = block.boundingBox;
      // final List<Point<int>> cornerPoints = block.cornerPoints;
      // final String text = block.text;
      // final List<String> languages = block.recognizedLanguages;

      for (TextLine line in block.lines) {
        // Same getters as TextBlock
        for (TextElement element in line.elements) {
          setState(() {
            _extractedText += element.text + " ";
          });
        }
      }
    }
    textRecognizer.close();
  }

  // pass the ImageSource [gallery/camera]
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      // _imageFile = File(pickedFile!.path);
      inputImage = InputImage.fromFilePath(pickedFile!.path);
    });
  // Call this method to extract text from the image
    _processImage(inputImage);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(children: [
            FilledButton(onPressed: (){
              _pickImage(ImageSource.camera);
            }, child: const Text("Take a picture! (mlkit)")),
            FilledButton(onPressed: (){
              _pickImage(ImageSource.gallery);
            }, child: const Text("Pick an image! (mlkit)")),
          ],),
          Card(child: SelectableText(_extractedText),)
        ],
      )
    );
  }
}
