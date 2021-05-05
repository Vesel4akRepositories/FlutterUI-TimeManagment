import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:performance_app/HomeScreen/pie/progress_ring.dart';
import 'package:performance_app/constants.dart';

import 'middle.dart';

class ProgressPie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Outer white circle
    return Container(
      height: 230.0,
      width: 230.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white24,
      ),
      child: Center(
        // Container of the pie chart
        child: Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: <Widget>[
              Center(child: Middle(width: 120.0)),
              Transform.rotate(
                angle: pi * 1.42,
                child: CustomPaint(
                  child: Center(),
                  painter: ProgressRings(
                    completedPercentage: 0.5,
                    circleWidth: 20.0,
                    color: bColor,
                    progressStartAngle: 0,
                    lengthToRemove: 10,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi / 1.8,
                child: CustomPaint(
                  child: Center(),
                  painter: ProgressRings(
                    completedPercentage: 0.4,
                    circleWidth: 20.0,
                    progressStartAngle: 360,
                    color: pColor,
                    lengthToRemove: 6,
                  ),
                ),
              ),
              Transform.rotate(
                angle: pi / 2.6,
                child: CustomPaint(
                  child: Center(),
                  painter: ProgressRings(
                    completedPercentage: 0.40,
                    circleWidth: 20.0,
                    color: Colors.pink,
                    progressStartAngle: 1.15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
