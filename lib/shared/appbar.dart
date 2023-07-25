import 'package:flutter/material.dart';
import '../../shared/theme/text_theme.dart';
import '../views/auth/login/login_view.dart';
import 'widgets/action_dialog.dart';
import 'widgets/nav.dart';

class KAppBar extends StatefulWidget implements PreferredSizeWidget {
  const KAppBar({Key? key, this.title = '', this.isMainScreen = false})
      : super(key: key);
  final String title;
  final bool isMainScreen;

  @override
  State<KAppBar> createState() => _KAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _KAppBarState extends State<KAppBar> {
  @override
  Widget build(BuildContext context) {
    // bool? isOnline;
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Text(
          widget.title,
          style: KTextStyle.of(context).title,
        ),
        centerTitle: true,
        // titleTextStyle: KTextStyle.of(context).appBar,

        leading: SwitchListTile.adaptive(
          value: true,
          onChanged: (value) {},
          title: const Text('data', style: TextStyle(color: Colors.red)),
          applyCupertinoTheme: true,
        ),

        leadingWidth: 100,
        automaticallyImplyLeading: true,
        elevation: .5,

        actions: [
          if (widget.isMainScreen)
            IconButton(
              onPressed: () {
                ActionDialog(
                  title: "هل تريد تسجيل الخروج ؟",
                  approveAction: "نعم",
                  cancelAction: "لا",
                  onApproveClick: () {
                    Nav.offAll(const LoginView());
                  },
                  onCancelClick: () {
                    Nav.back();
                  },
                ).show<void>(context);

              },
              icon: const Icon(Icons.login_outlined),
            ),
        ],
      ),
    );
  }
}
