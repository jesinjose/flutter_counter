import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({Key? key}) : super(key: key);

  @override
  State<ImagePick> createState() => _ImagePickState();
}

class _ImagePickState extends State<ImagePick> {
  File? _image;
  final ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null ? Text('No Image Selected') : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getImage(source: ImageSource.camera);
        },
        child: Icon(Icons.camera),
      ),
    );
  }

  Future getImage({required ImageSource source}) async {
    final image = await imagePicker.pickImage(source: source);
    setState(() {
      _image = File(image!.path);
    });
  }
}
