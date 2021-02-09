import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class ChatTab extends StatelessWidget {
  final Color contactTextColor = Color(0XFFD4D6D8);
  final Color messageTextColor = Color(0XFF979D9F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF101D24),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: ListView.builder(
          itemCount: chatData.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChatScreen(
                          contactName: chatData[index].contactName,
                          contactText: chatData[index].messageText,
                          contactTime: chatData[index].messageTime,
                        ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 25.0,
                    backgroundImage:
                        AssetImage('images/${chatData[index].profilePicture}'),
                  ),
                  title: Text(
                    chatData[index].contactName,
                    style: TextStyle(
                      color: contactTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    chatData[index].messageText,
                    style: TextStyle(
                      color: messageTextColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Text(
                    chatData[index].messageTime,
                    style: TextStyle(
                      color: messageTextColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 70.0,
                    right: 10.0,
                  ),
                  child: Divider(
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
