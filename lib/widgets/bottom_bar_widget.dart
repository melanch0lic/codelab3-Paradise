import 'package:codelab_3/pages/landing_page.dart';
import 'package:flutter/material.dart';

import '../models/bottom_bar_item.dart';

class BottomBarWidget extends StatefulWidget {
  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  var _barList = barItemsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(_barList.length, (index) {
          var barItem = _barList[index];

          return GestureDetector(
            onTap: () {
              setState(() {
                _barList.forEach((element) {
                  element.isSelected = barItem == element;
                });
              });
            },
            child: Column(
              children: [
                Icon(barItem.icon,
                    color: barItem.isSelected! ? mainThemeColor : Colors.grey),
                Text(
                  barItem.label!,
                  style: TextStyle(
                    color: barItem.isSelected! ? mainThemeColor : Colors.grey,
                    fontSize: 11,
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
