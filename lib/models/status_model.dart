class StatusModel {
  StatusModel(
      {this.statusPicture, this.contactName, this.statusDay, this.statusTime});
  String statusPicture;
  String contactName;
  String statusDay;
  String statusTime;
}

List<StatusModel> statusData = [
  StatusModel(
    statusPicture: '1.jpg',
    contactName: 'Bobby Daniels',
    statusDay: 'Today',
    statusTime: '11:00 am',
  ),
  StatusModel(
    statusPicture: '3.jpg',
    contactName: 'Patrick Nelson',
    statusDay: 'Today',
    statusTime: '10:30 am',
  ),
  StatusModel(
    statusPicture: '4.jpg',
    contactName: 'Trix Gardner',
    statusDay: 'Today',
    statusTime: '12:00 am',
  ),
  StatusModel(
    statusPicture: '6.jpg',
    contactName: 'Georgie Santos',
    statusDay: 'Yesterday',
    statusTime: '10:30 pm',
  ),
  StatusModel(
    statusPicture: '9.jpg',
    contactName: 'Phil Mann',
    statusDay: 'Yesterday',
    statusTime: '06:00 pm',
  ),
];
