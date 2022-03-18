import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageActionBar extends StatelessWidget {
  const MessageActionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.camera),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Color.fromARGB(255, 33, 35, 36),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text("Send Message"),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.arrow_right_circle_fill))
          ],
        ),
      ),
    );
  }
}
