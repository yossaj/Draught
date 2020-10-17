import 'package:flutter/material.dart';
import 'package:draught/constants.dart';
import 'floating_box.dart';

class InputBox extends StatelessWidget {

  InputBox({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(vertical: 10),
      child: FloatingBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                text,
                style: kBodyText,),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: TextField(),
            )
          ],
        ),
      ),
    );
  }
}
