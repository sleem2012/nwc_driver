import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'helper.dart';
import 'colors.dart';

class KThemeData {
  static BuildContext? _context;
  static KThemeData? _instance;

  KThemeData._internal() {
    _instance = this;
  }

  static KThemeData of(BuildContext context) {
    _context = context;
    return _instance ?? KThemeData._internal();
  }

  SystemUiOverlayStyle get overlayStyle {
    return Theme.of(_context!).brightness == Brightness.light ? _lightOverLay : _darkOverLay;
  }
  ThemeData get themeData {
    return Theme.of(_context!).brightness == Brightness.light ? light : dark;
  }
  static ThemeData get light {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: KColors.backgroundL,

      appBarTheme: const AppBarTheme(
        color: KColors.backgroundL,
        systemOverlayStyle: _lightOverLay,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: KColors.accentColorL),
      ),
      shadowColor: KColors.shadowL,
      inputDecorationTheme: inputDecorationTheme(color:  const Color(0xff3649b7)),
      iconTheme: const IconThemeData(color: KColors.accentColorL),
      elevatedButtonTheme: elevatedBtnTheme(shadow: KColors.shadowL, background: KColors.elevatedBoxL),
    );
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: KColors.backgroundD,
      appBarTheme: const AppBarTheme(
        color: KColors.backgroundD,
        systemOverlayStyle: _darkOverLay,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: KColors.accentColorD),
      ),
      shadowColor: KColors.shadowD,
      inputDecorationTheme: inputDecorationTheme(color: const Color(0xffA4ACAD)),
      elevatedButtonTheme: elevatedBtnTheme(shadow: KColors.shadowD, background: KColors.elevatedBoxD),
    );
  }

  static ElevatedButtonThemeData elevatedBtnTheme({required Color shadow, required Color background}) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        shadowColor: MaterialStateProperty.all<Color>(shadow),
        elevation: MaterialStateProperty.all<double>(5.0),
        backgroundColor: MaterialStateProperty.all<Color>(background),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KHelper.btnRadius),
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme({required Color color}) {
    return InputDecorationTheme(
      border: outlineInputBorder(color: color),
      disabledBorder: outlineInputBorder(color: color),
      errorBorder: outlineInputBorder(color: color),
      focusedErrorBorder: outlineInputBorder(color: color),
      enabledBorder: outlineInputBorder(color: color),
      focusedBorder: outlineInputBorder(color: color),
    );
  }

  InputDecoration get inputBorderDecoration {
    return Theme.of(_context!).brightness == Brightness.light ? inputDecoration(color: KColors.backgroundL) : inputDecoration(color: KColors.backgroundD);
  }

  static InputDecoration inputDecoration({required Color color}) => InputDecoration(
    border: outlineInputBorder(color: color),
    disabledBorder: outlineInputBorder(color: color),
    errorBorder: outlineInputBorder(color: color),
    focusedErrorBorder: outlineInputBorder(color: color),
    enabledBorder: outlineInputBorder(color: color),
    focusedBorder: outlineInputBorder(color: color),
  );

  static OutlineInputBorder outlineInputBorder({required Color color}) => OutlineInputBorder(
    borderSide: BorderSide(width: .1, color: color),
    borderRadius: BorderRadius.circular(KHelper.btnRadius),
  );

  static const SystemUiOverlayStyle _darkOverLay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const SystemUiOverlayStyle _lightOverLay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
}
