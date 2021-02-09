import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/calls_model.dart';

class CallsTab extends StatelessWidget {
  final Color contactTextColor = Color(0XFFD4D6D8);
  final Color messageTextColor = Color(0XFF979D9F);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF101D24),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_call),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: callsData.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 25.0,
                          backgroundImage: AssetImage(
                              'images/${callsData[index].profilePicture}'),
                        ),
                        title: Text(
                          callsData[index].contactName,
                          style: TextStyle(
                            color: contactTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(
                              callsData[index].callType,
                              size: 18.0,
                              color: Color(0XFF00AF9C),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              '${callsData[index].callDay}, ${callsData[index].callTime}',
                              style: TextStyle(
                                color: messageTextColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        trailing: Icon(
                          callsData[index].callMethod,
                          color: Color(0XFF00AF9C),
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
