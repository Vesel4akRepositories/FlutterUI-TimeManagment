import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:performance_app/TasksScreen/TaskCount/task_count.dart';
import 'package:performance_app/TasksScreen/TasksToday/tasks_today.dart';
import 'package:performance_app/constants.dart';

import 'ProgressBar/progress_bar.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text("Discuss the project with customers", style: hTextStyle),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Also today you have plans to go to the store : )",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xb38b98ab),
                    fontWeight: FontWeight.normal),
              )),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ProgressBar(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: TaskCount(),
        ),
        TasksToday()
      ],
    );
  }
}
