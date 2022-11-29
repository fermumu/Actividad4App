import 'package:whatsappdemo/models/chats_model.dart';

class StatusModel {
  final String imageUrl;
  final String name;
  final String time;

  StatusModel({required this.imageUrl, required this.name, required this.time});
}

List<StatusModel> status = [
  new StatusModel(
      imageUrl: messageData[0].imageUrl,
      name: messageData[0].name,
      time: messageData[0].time),
  new StatusModel(
      imageUrl: messageData[1].imageUrl,
      name: messageData[1].name,
      time: messageData[1].time),
  new StatusModel(
      imageUrl: messageData[2].imageUrl,
      name: messageData[2].name,
      time: messageData[2].time),
  new StatusModel(
      imageUrl: messageData[3].imageUrl,
      name: messageData[3].name,
      time: messageData[3].time)
];
