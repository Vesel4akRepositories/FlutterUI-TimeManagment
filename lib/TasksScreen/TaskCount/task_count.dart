import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:performance_app/constants.dart';

class TaskCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Deadline",
              style: aTextStyle,
            ),
            Text(
              "24 April 2021",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )
          ],
        ),
        Text("10 days left", style: GoogleFonts.roboto(
          textStyle: TextStyle(
              fontSize: 15, color: Color(0xb38b98ab)),
        ))
      ],
    );
  }
}
