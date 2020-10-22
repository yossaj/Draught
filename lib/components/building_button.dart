
import 'package:flutter/material.dart';
import 'floating_box.dart';

class BuildingButton extends StatelessWidget{

  final int number;
  final int chosenNumber;
  final String text;
  final String imagePath;
  final Function onPress;
  BuildingButton({this.text, this.imagePath, this.chosenNumber, this.number, this.onPress});




  @override
  Widget build(BuildContext context) {
    Color backgroundColor = (number == chosenNumber) ?  Colors.deepOrange : Colors.white;

    return  Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: FloatingBox(
          backgroundColor: backgroundColor,

          child: FlatButton(
            onPressed: onPress,
            child: Column(
              children: [
                SizedBox(height: 10),
                Image.asset(imagePath),
                SizedBox(height: 5),
                Text(text),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}