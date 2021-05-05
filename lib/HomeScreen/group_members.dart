import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:performance_app/constants.dart';

class GroupMembers extends StatelessWidget {
  
  double avatarSize = 45;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Stack(
        children: [
          Container(
              width: avatarSize,
              height: avatarSize,
              padding: EdgeInsets.all(3),
              decoration: new BoxDecoration(
                color: const Color(0xffaea1fc),
                borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                border: new Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: Image.asset("assets/images/1.png")),
          Positioned(
            left: 25,
            child: Container(
                width: avatarSize,
                height: avatarSize,
                padding: EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  color: const Color(0xffeeb8de),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  border: new Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Image.asset("assets/images/2.png")),
          ),
          Positioned(
            left: 50,
            child: Container(
                width: avatarSize,
                height: avatarSize,
                padding: EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  color: const Color(0xffe28796),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  border: new Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                child: Image.asset("assets/images/3.png")),
          ),
          Positioned(
            left: 105,
            child: Container(
                width: avatarSize,
                height: avatarSize,
                padding: EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  color: bColor,
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),

                ),
                child: Center(child: Text("+5",style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                      fontSize: 12),
                ),))),
          ),
        ],
      ),
    );
  }
}
