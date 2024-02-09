import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSentByUser;

  const ChatBubble({
    required this.text,
    required this.isSentByUser,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(
        left: isSentByUser ? MediaQuery.of(context).size.width / 2 : 0,
        right: isSentByUser ? 0 : MediaQuery.of(context).size.width / 3,
      ),
      alignment: isSentByUser ? Alignment.bottomRight : Alignment.topLeft,
      decoration: BoxDecoration(
        color: isSentByUser
            ? Color.fromARGB(255, 234, 236, 240)
            : Color.fromARGB(255, 211, 228, 243),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSentByUser ? 10 : 0),
          topRight: Radius.circular(isSentByUser ? 0 : 10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
