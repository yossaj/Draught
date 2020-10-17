
import 'package:flutter/material.dart';
import 'floating_box.dart';

class BuildingButton extends StatefulWidget {

  BuildingButton({this.text, this.imagePath});
  final String text;
  final String imagePath;



  @override
  _BuildingButtonState createState() => _BuildingButtonState();
}

class _BuildingButtonState extends State<BuildingButton> {
  Color backgroundColor = Colors.white;
  String text;
  String imagePath;

  @override
  void initState() {
    setContent();
    // TODO: implement initState
    super.initState();
  }

  void setContent(){
    text = widget.text;
    imagePath = widget.imagePath;
  }

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
                  backgroundColor = Colors.deepOrangeAccent;
                }else{
                  backgroundColor = Colors.white;
                }

              });

            },
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