import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsModel {
  CallsModel(
      {this.profilePicture,
      this.contactName,
      this.callDay,
      this.callTime,
      this.callType,
      this.callMethod});
  String profilePicture;
  String contactName;
  String callDay;
  String callTime;
  IconData callType;
  IconData callMethod;
}

List<CallsModel> callsData = [
  CallsModel(
    profilePicture: '2.jpg',
    contactName: 'John Green',
    callDay: '40 minutes ago',
    callTime: '',
    callType: Icons.call_received_outlined,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '1.jpg',
    contactName: 'Bobby Daniels',
    callDay: 'Today',
    callTime: '10:00 am',
    callType: Icons.call_made_outlined,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '4.jpg',
    contactName: 'Trix Gardner',
    callDay: 'Today',
    callTime: '09:30 am',
    callType: Icons.call_received_outlined,
    callMethod: Icons.video_call_outlined,
  ),
  CallsModel(
    profilePicture: '3.jpg',
    contactName: 'Patrick Nelson',
    callDay: 'Today',
    callTime: '12:10 am',
    callType: Icons.call_missed,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '6.jpg',
    contactName: 'Georgie Santos',
    callDay: 'Today',
    callTime: '12:00 am',
    callType: Icons.call_received_outlined,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '5.jpg',
    contactName: 'Curtis Daniels',
    callDay: 'Yesterday',
    callTime: '09:00 pm',
    callType: Icons.missed_video_call_outlined,
    callMethod: Icons.video_call_outlined,
  ),
  CallsModel(
    profilePicture: '8.jpg',
    contactName: 'Max Schwartz',
    callDay: 'Yesterday',
    callTime: '07:00 pm',
    callType: Icons.call_received_outlined,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '7.jpg',
    contactName: 'Victor Morales',
    callDay: '01/01/2021',
    callTime: '12:20 am',
    callType: Icons.call_received_outlined,
    callMethod: Icons.phone,
  ),
  CallsModel(
    profilePicture: '9.jpg',
    contactName: 'Phil Mann',
    callDay: '01/01/2021',
    callTime: '12:00 am',
    callType: Icons.call_received_outlined,
    callMethod: Icons.phone,
  ),
];
