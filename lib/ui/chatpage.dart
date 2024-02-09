import 'package:flutter/material.dart';
import 'package:chat_app/components/chat_bubble.dart';
import 'package:chat_app/components/send_message_widget.dart';
import 'package:chat_app/constants/colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: kAccentColor2,
                  ),
                  SizedBox(
                    width: 90.0,
                  ),
                  Text(
                    "Shivam Gupta",
                    style: TextStyle(
                      color: kAccentColor3,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0, bottom: 40.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  ChatBubble(
                    text: "Hello, How was the day?",
                    isSentByUser: true,
                  ),
                  SizedBox(height: 20.0),
                  ChatBubble(
                    text: "The Day was really good",
                    isSentByUser: false,
                  ),
                  SizedBox(height: 20.0),
                  ChatBubble(
                    text: "Have you attended the college today?",
                    isSentByUser: true,
                  ),
                  SizedBox(height: 20.0),
                  ChatBubble(
                    text: "Yes I have",
                    isSentByUser: false,
                  ),
                  SizedBox(height: 20.0),
                  ChatBubble(
                    text: "Okay Nice. Have you submitted the Project?",
                    isSentByUser: true,
                  ),
                  SizedBox(height: 20.0),
                  ChatBubble(
                    text: "No, Maybe Tomorrow",
                    isSentByUser: false,
                  ),
                  Spacer(),
                  SendMessageWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
