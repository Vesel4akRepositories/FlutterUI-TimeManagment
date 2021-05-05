import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:performance_app/constants.dart';

class WorkProgressItem extends StatelessWidget {

  Color dotColor;
  String name;
  int percent;

  WorkProgressItem({this.name, this.percent, this.dotColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name,style: GoogleFonts.roboto(
          textStyle: TextStyle(
              fontSize: 14, color: Color(0xb383868c), fontWeight: FontWeight.normal),
        )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: dotColor
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("$percent %",style:GoogleFonts.roboto(
              textStyle:
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),))
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
