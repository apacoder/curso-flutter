import 'package:examples/whatsapp/messages.dart';
import 'package:flutter/material.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          children: const [
            Icon(Icons.whatsapp),
            SizedBox(width: 10),
            Text('WhatsApp'),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: waMessageList.length,
          itemBuilder: (BuildContext contex, int index) {
            return MessageView(
              waMessage: waMessageList[index],
            );
          },
        ),
      ),
    );
  }
}

class MessageView extends StatelessWidget {
  final MessageData waMessage;
  const MessageView({Key? key, required this.waMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Card(
        child: ListTile(
          leading: Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              )),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                waMessage.sended,
                style: const TextStyle(color: Colors.grey, fontSize: 13),
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.green[600], shape: BoxShape.circle),
                child: Center(
                  child: Text(
                    waMessage.messageCount,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          focusColor: Colors.blue,
          hoverColor: Colors.blue,
          title: Text(waMessage.user),
          subtitle: Text(waMessage.message),
        ),
      ),
    );
  }
}

class MessageData {
  String message;
  String messageCount;
  String picture;
  String sended;
  String user;

  MessageData(
    this.user,
    this.message,
    this.picture,
    this.messageCount,
    this.sended,
  );
}
