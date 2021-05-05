import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:performance_app/constants.dart';

class TasksToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: bColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(dPadding),
                topRight: Radius.circular(dPadding))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tasks Today",
              style: aTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                title: Text(
                  "Meeting with customer",
                  style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text("Tom Fancie",
                    style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 12, color: Color(0xb38b98ab)),
                    )),
                leading: CircleAvatar(
                  backgroundColor: Color(0x1ab26afa),
                  child: Icon(
                    CupertinoIcons.arrow_down_left,
                    color: pColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                contentPadding: EdgeInsets.all(15),
                title: Text(
                  "Call the designer",
                  style: GoogleFonts.roboto(
                    textStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text("Robert Cart",
                    style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 12, color: Color(0xb38b98ab)),
                    )),
                leading: CircleAvatar(
                  backgroundColor: Color(0x1ab26afa),
                  child: Icon(
                    CupertinoIcons.time,
                    color: pColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
