import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'di.dart';
import 'shared/cache/locale_storage.dart';

const bool test = false;
void main() async {
// KStorage.i.erase;
  await Di.init();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);


  runApp(const RestartWidget(child: MyApp()));
}


class RestartWidget extends StatefulWidget {
  const RestartWidget({super.key, required this.child});
  final Widget child;
  static void restartApp(BuildContext context) => context.findAncestorStateOfType<_RestartWidgetState>()?.restartApp();
  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();
  void restartApp() => setState(() => key = UniqueKey());
  @override
  Widget build(BuildContext context) => KeyedSubtree(key: key, child: widget.child);
}
