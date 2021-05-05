import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance_app/constants.dart';

class ClientResponseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Client Response", style: aTextStyle),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
          color: bColor,
            borderRadius: BorderRadius.circular(25)
          ),
          child: Row(
            children: [
              Container(
                child: Image.asset("assets/images/star_eyes.png",width: 47,),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(
                width: dPadding,
              ),
              RichText(text: TextSpan(
                children: [
                  TextSpan(
                    style: aTextStyle,
                    text: "Last Update\n"
                  ),

                  TextSpan(
                    style: hTextStyle,
                    text: "Amazing Work!"
                  ),
                ]
              ))
            ],
          ),
        )
      ],
    );
  }
}
