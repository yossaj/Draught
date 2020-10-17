import 'package:flutter/material.dart';

class FloatingBox extends StatelessWidget {

  FloatingBox({this.child, this.backgroundColor});

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration:  BoxDecoration(
          color: backgroundColor == null ? Colors.white : backgroundColor ,
          borderRadius: BorderRadius.all(Radius.circular(5)) ,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]
      ),
    );
  }
}
