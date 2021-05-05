import 'package:flutter/material.dart';

class Middle extends StatelessWidget {
  final num width;

  const Middle({Key key, @required this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: width,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Container(
            child: Center(child: Text("85%",style: TextStyle(
            fontSize: 18,
              fontWeight: FontWeight.bold
            ),)),
            height: width ,
            width: width,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

            ),
          ),
        ),
      ),
    );
  }
}