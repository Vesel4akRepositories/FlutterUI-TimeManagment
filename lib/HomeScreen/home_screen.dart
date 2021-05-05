import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance_app/HomeScreen/BottomBar/bottom_bar.dart';
import 'package:performance_app/HomeScreen/client_response.dart';
import 'package:performance_app/HomeScreen/group_members.dart';
import 'package:performance_app/HomeScreen/work_progress.dart';
import 'package:performance_app/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(dPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Hi, Vesel4ak!",
              style: hTextStyle,
            ),
            Text("How is today?", style: hTextStyle),
            SizedBox(
              height: dPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Group Members",
                        style: aTextStyle,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GroupMembers()
                    ]),
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: pColor,
                        borderRadius: BorderRadius.circular(18)),
                    child: Icon(
                      CupertinoIcons.add,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: dPadding,
            ),
            ClientResponseWidget(),
            SizedBox(
              height: dPadding,
            ),
            WorkProgressWidget(),

          ],
        ),
    );
  }
}
