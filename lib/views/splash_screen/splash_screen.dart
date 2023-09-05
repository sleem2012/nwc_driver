import 'package:flutter/material.dart';

import '../../app.dart';
import '../../shared/cache/locale_storage.dart';
import '../../shared/location_helper.dart';
import '../../shared/widgets/nav.dart';
import '../main_screen/main_screen.dart';
import 'widget/splash_body.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
 {

@override
  void initState() {
  // LocationHelper.determinePosition()
  //     .then((value) => KStorage.i.setLocation(value));
   Future.delayed(const Duration(seconds: 4),() {
     Nav.offAll(const MainNavPages());

   },);

  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const SplashBody();

    // return BlocBuilder<SettingBloc, SettingState>(
    //   builder: (context, state) {
    //     return state.maybeWhen(orElse: () {
    //     }, error: (error) {
    //       return KErrorView(
    //         error: error,
    //         onTryAgain: SettingBloc.of(context).get,
    //       );
    //     }, success: (model) {
    //
    //         return const MainNavPages();
    //     });
    //   },
    // );
  }
}
