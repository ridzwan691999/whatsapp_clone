import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CameraTab extends StatefulWidget {
  @override
  _CameraTabState createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  ImagePicker picker = ImagePicker();
  File image;
  @override
  Widget build(BuildContext context) {
    Future openCamera() async {
      PickedFile pickedImage =
          await picker.getImage(source: ImageSource.camera);
      setState(() {
        if (pickedImage != null) {
          image = File(pickedImage.path);
        } else {
          print('No image found');
        }
      });
    }

    return Scaffold(
      backgroundColor: Color(0XFF101D24),
      body: Center(
        child: (image == null)
            ? Text(
                'Click the icon to open camera',
                style: TextStyle(color: Colors.white),
              )
            : Image.file(image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openCamera,
        child: Icon(Icons.camera_alt_outlined),
      ),
    );
  }
}
