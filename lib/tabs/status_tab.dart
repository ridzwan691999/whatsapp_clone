import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';
import 'package:whatsapp_clone/tabs/camera_tab.dart';

class StatusTab extends StatelessWidget {
  final Color contactTextColor = Color(0XFFD4D6D8);
  final Color messageTextColor = Color(0XFF979D9F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF101D24),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CameraTab(),
                  ),
                );
              },
              leading: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                  CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Color(0XFF0CB2A0),
                    child: Icon(
                      Icons.add,
                      size: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                  color: contactTextColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(
                  color: messageTextColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              child: Text(
                'Viewed Updates',
                style: TextStyle(
                  color: messageTextColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 25.0,
                          backgroundImage: AssetImage(
                            'images/${statusData[index].statusPicture}',
                          ),
                        ),
                        title: Text(
                          statusData[index].contactName,
                          style: TextStyle(
                            color: contactTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          '${statusData[index].statusDay}, ${statusData[index].statusTime}',
                          style: TextStyle(
                            color: messageTextColor,
                            fontSize: 15.0,
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
          ],
        ),
      ),
    );
  }
}
