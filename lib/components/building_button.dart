
import 'package:flutter/material.dart';
import 'floating_box.dart';

class BuildingButton extends StatefulWidget {

  @override
  _BuildingButtonState createState() => _BuildingButtonState();
}

class _BuildingButtonState extends State<BuildingButton> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: FloatingBox(
          backgroundColor: backgroundColor,

          child: FlatButton(
            onPressed: (){
              setState(() {
                if(backgroundColor == Colors.white){
                  backgroundColor = Colors.deepOrange;
                }else{
                  backgroundColor = Colors.white;
                }

              });

            },
            child: Column(
              children: [
                SizedBox(height: 10),
                Image.asset('assets/images/terrace.png'),
                SizedBox(height: 5),
                Text("Terrace"),
                SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}