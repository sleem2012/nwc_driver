import 'package:flutter/material.dart';

abstract class KColors {
  static ColorsGetter of(BuildContext context) {
    return ColorsGetter.of(context);
  }

  //Light
  static const Color backgroundL = Color(0xFFF5F5F5);
  static const Color elevatedBoxL = Color(0xFFffffff);
  static const Color navBarL = Color(0xFFF8F8F8);
  static const Color actionBTNL = Color(0xFF05B646);
  static const Color inActionBTNL = Color(0xFF8BD8D7);
  static const Color fabL = Color(0xFF45C0BE);
  static const Color iconL = Color(0xFF45C0BE);
  static const Color selectedIconL = Color(0xFF222134);
  static const Color errorL = Color(0xFFBE0202);
  static const Color shadowL = Color(0x20000000);
  static const Color cursorL = Color(0xFFBE0202);
  // static const Color accentColorL = Color(0xff05569B);
  static const Color accentColorL = Color(0xff0765A7);
  static const Color textFieldL = Color(0xffEAECF0);
  static const Color linearOne = Color(0xff189fab);
  static const Color primary = Color(0xFFCF3339);

  //Dark
  static const Color backgroundD = Color(0xff2F2E41);
  static const Color elevatedBoxD = Color(0xFF3C3A56);
  static const Color navBarD = Color(0xFF222134);
  static const Color actionBTND = Color(0xFF05B646);
  static const Color inActionBTND = Color(0xFF8BD8D7);
  static const Color fabD = Color(0xFF45C0BE);
  static const Color iconD = Color(0xFF45C0BE);
  static const Color selectedIconD = Colors.white;
  static const Color errorD = Color(0xFFD80000);
  static const Color shadowD = Color(0x20000000);
  static const Color cursorD = Color(0xFFBE0202);
  static const Color textFieldD = Color(0xffE6E9EA);
  static const Color accentColorD = Color(0xff0765A7);
}

class ColorsGetter extends KColors {
  static BuildContext? _context;
  static ColorsGetter? _instance;

  ColorsGetter._internal() {
    _instance = this;
  }

  static ColorsGetter of(BuildContext context) {
    _context = context;
    return _instance ?? ColorsGetter._internal();
  }

  //Getters
  Color get error {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.errorL
        : KColors.errorD;
  }

  Color get textField {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.textFieldD
        : KColors.textFieldL;
  }

  Color get actionBTN {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.actionBTNL
        : KColors.actionBTND;
  }

  Color get icons {
    return Theme.of(_context!).brightness == Brightness.dark
        ? Colors.white
        : Colors.black;
  }

  Color get freeShiping {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.inActionBTNL
        : KColors.inActionBTND;
  }

  Color get navBar {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.navBarD
        : KColors.navBarL;
  }

  Color get background {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.backgroundD
        : KColors.backgroundL;
  }

  Color get elevatedBox {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.elevatedBoxL
        : KColors.elevatedBoxD;
  }

  Color get shadow {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.shadowL
        : KColors.shadowD;
  }

  Color get cursor {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.cursorL
        : KColors.cursorD;
  }

  Color get reBackground {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.backgroundD
        : KColors.backgroundL;
  }

  Color get card {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.accentColorL
        : KColors.elevatedBoxD;
  }

  Color get border {
    return Theme.of(_context!).brightness == Brightness.dark
        ? KColors.backgroundD.withOpacity(.2)
        : KColors.backgroundL;
  }

  Color get trackColor {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.actionBTND
        : KColors.actionBTND;
  }

  Color get thumbColor {
    return Colors.white;
  }

  Color get activeIcons {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.iconL
        : KColors.iconD;
  }

  Color get selected {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.selectedIconL
        : KColors.selectedIconD;
  }

  Color get fabBackground {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.fabL
        : KColors.fabD;
  }

  Color get accentColor {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.accentColorL
        : KColors.accentColorD;
  }

  Color get primary {
    return Theme.of(_context!).brightness == Brightness.light
        ? KColors.primary
        : KColors.primary;
  }
}
