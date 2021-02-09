import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ChatScreen extends StatefulWidget {
  ChatScreen({this.contactName, this.contactText, this.contactTime});
  final String contactName;
  final String contactText;
  final String contactTime;
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ImagePicker imagePicker = ImagePicker();
  File imageURL;
  String imageHour;
  String imageMinutes;
  dynamic dateTime;

  Future captureImage() async {
    PickedFile pickedFile =
        await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        imageURL = File(pickedFile.path);
        imageHour = DateTime.now().hour.toString();
        imageMinutes = DateTime.now().minute.toString();
      } else {
        print('No file found');
      }
    });
  }

  Future getImage() async {
    PickedFile pickedFile =
        await imagePicker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        imageURL = File(pickedFile.path);
        imageHour = DateTime.now().hour.toString();
        imageMinutes = DateTime.now().minute.toString();
      });
    } else {
      print('No image found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF101D24),
      appBar: AppBar(
        title: Text(widget.contactName),
        actions: [
          Icon(Icons.videocam),
          SizedBox(
            width: 18.0,
          ),
          Icon(Icons.phone),
          SizedBox(
            width: 18.0,
          ),
          Icon(Icons.more_vert),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                  decoration: BoxDecoration(
                    color: Color(0XFF007C6E),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        widget.contactText,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        widget.contactTime,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 200.0,
                  width: 200.0,
                  padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                  decoration: BoxDecoration(
                    color: (imageURL == null)
                        ? Color(0XFF101D24)
                        : Color(0XFF007C6E),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: (imageURL == null)
                      ? Text('')
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Image.file(
                                imageURL,
                                height: 175.0,
                                width: 190.0,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              '$imageHour:$imageMinutes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 15.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                        suffixIcon: IconButton(
                          onPressed: getImage,
                          icon: Icon(
                            Icons.attach_file_outlined,
                            color: Colors.grey,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: captureImage,
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                  ),
                  IconButton(
                    color: Color(0XFF00AF9C),
                    icon: Icon(
                      Icons.mic,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
