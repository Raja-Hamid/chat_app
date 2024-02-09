import 'package:flutter/material.dart';

class SendMessageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type a message",
                  hintStyle: TextStyle(color: Colors.black45),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFf3f3f3),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: Icon(
                  Icons.send,
                  color: Color(0xFF553370),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
