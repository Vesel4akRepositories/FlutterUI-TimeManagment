import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:performance_app/constants.dart';

class BottomBar extends StatefulWidget {
  List<IconData> items;
  Function(int index) onTap;
  int currentIndex = 0;

  BottomBar({this.items, this.onTap, this.currentIndex});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 80, right: 80, top: 0, bottom: 20),
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0.3,
                blurRadius: 20,
                offset: Offset(0, 7), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List<Widget>.generate(
              widget.items.length,
              (index) => GestureDetector(
                    onTap: () {
                      widget.onTap(index);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        widget.items[index],
                        size: 35,
                        color: index == widget.currentIndex
                            ? Colors.black
                            : Colors.grey,
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
