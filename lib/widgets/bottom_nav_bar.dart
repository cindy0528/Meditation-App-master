import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
              title: "Settings", iconsrc: Icons.ac_unit_sharp, press: () {}),
          IconButton(
              icon: Icon(Icons.directions_bus),
              iconSize: 40.0,
              color: Colors.red,
              onPressed: () {}),
          BottomNavItem(
            title: "Settings",
            iconsrc: Icons.ac_unit_sharp,
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData iconsrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.iconsrc,
    this.title,
    this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            iconsrc,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
