import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance_app/constants.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "Progress Task",
        style: aTextStyle,
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        height: 60,
        width: 330,
        decoration: BoxDecoration(
            color: bColor, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              width: 115.5,
              decoration: BoxDecoration(
                  color: pColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Completed", style: TextStyle(
                    fontSize: 8,
                    color: Color(0xb3d9dfec)
                  ),),
                  SizedBox(
                    height: 5,
                  ),
                  Text("35%", style: TextStyle(
                    color: Colors.white
                  ))
                ],
              )
            )
          ],
        ),
      )
    ]);
  }
}
