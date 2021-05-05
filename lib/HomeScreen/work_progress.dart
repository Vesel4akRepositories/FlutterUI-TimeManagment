import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance_app/HomeScreen/pie/progress_pie.dart';
import 'package:performance_app/HomeScreen/work_progress_item.dart';

import '../constants.dart';

class WorkProgressWidget extends StatelessWidget {
  List<WorkProgressItem> items = [
    WorkProgressItem(
      name: "Completed",
      percent: 30,
      dotColor: pColor,
    ),
    WorkProgressItem(
      name: "Medium",
      percent: 55,
      dotColor: Colors.pink,
    ),
    WorkProgressItem(
      name: "Later",
      percent: 35,
      dotColor: Colors.grey[300] ,
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Work Progress", style: aTextStyle),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProgressPie(),
            Column(
              children: items,
            )
          ],
        ),

      ],
    );
  }
}
