class ChatModel {
  ChatModel(
      {this.profilePicture,
      this.contactName,
      this.messageText,
      this.messageTime});
  String profilePicture;
  String contactName;
  String messageText;
  String messageTime;
}

List<ChatModel> chatData = [
  ChatModel(
    profilePicture: '1.jpg',
    contactName: 'Bobby Daniels',
    messageText: 'Hey there!',
    messageTime: '12:06 pm',
  ),
  ChatModel(
    profilePicture: '2.jpg',
    contactName: 'John Green',
    messageText: 'Hello. How are you?',
    messageTime: '10:33 am',
  ),
  ChatModel(
    profilePicture: '3.jpg',
    contactName: 'Patrick Nelson',
    messageText: 'Long time, no see!',
    messageTime: '09:54 am',
  ),
  ChatModel(
    profilePicture: '4.jpg',
    contactName: 'Trix Gardner',
    messageText: 'How have you been?',
    messageTime: '09:20 am',
  ),
  ChatModel(
    profilePicture: '5.jpg',
    contactName: 'Curtis Daniels',
    messageText: 'Happy Birthday!',
    messageTime: '12:00 am',
  ),
  ChatModel(
    profilePicture: '6.jpg',
    contactName: 'Georgie Santos',
    messageText: 'Nice to hear from you',
    messageTime: 'Yesterday',
  ),
  ChatModel(
    profilePicture: '7.jpg',
    contactName: 'Victor Morales',
    messageText: 'Okay, thank you very much',
    messageTime: 'Yesterday',
  ),
  ChatModel(
    profilePicture: '8.jpg',
    contactName: 'Max Schwartz',
    messageText: 'Sure, consider it done',
    messageTime: 'Yesterday',
  ),
  ChatModel(
    profilePicture: '9.jpg',
    contactName: 'Phil Mann',
    messageText: 'Farewell friend',
    messageTime: '01/01/2021',
  ),
];
