import 'package:flutter/cupertino.dart';

class NavBarModel {
  final Widget title;
  bool isSelected;
  final Widget correspondingWidget;
  final String heading;

  NavBarModel(this.title, this.correspondingWidget, this.heading, {this.isSelected = false});
}
