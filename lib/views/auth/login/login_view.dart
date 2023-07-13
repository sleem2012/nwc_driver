import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/constants.dart';
import '../../../shared/extensions.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/nav.dart';
import '../../../shared/widgets/text_field.dart';
import '../../main_screen/main_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: KColors.of(context).accentColor,
      body: Form(
        key: formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height / 5,
            ),
            Expanded(
              child: Container(
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(KHelper.hPadding),
                  child: Center(
                    child: Column(children: [
                      20.h,
                      Image.asset(
                        Constant.appLogo,
                        // fit: BoxFit.fitHeight,
                      ),
                      // const SizedBox(height: 10),
                      20.h,
                      Text(
                        "NWC",
                        style: KTextStyle.of(context).primary,
                      ),
                      60.h,
                      KTextFormField(
                        hintText: Tr.get.name,
                        prefixIcon: const Icon(Icons.person),
                        // controller: login.userNameController,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return Tr.get.name_validation;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: KHelper.listPadding),
                      KTextFormField(
                        // controller: login.passController,
                        hintText: Tr.get.password,
                        obscureText: true,
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return Tr.get.pass_validation;
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,

                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility_off),
                          // login.isVisible ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                          onPressed: () {
                            // login.togglePassV();
                          },
                        ),
                      ),
                      SizedBox(height: KHelper.listPadding),
                      // Align(
                      //     alignment: Alignment.bottomRight,
                      //     child: Text(
                      //       Tr.get.forget_password,
                      //       style: KTextStyle.of(context).body,
                      //     )),
                      const SizedBox(height: 34),
                      KButton(
                        title: Tr.get.login,
                        onPressed: () {
                          Nav.offAll(const MainNavPages());

                          // if (formKey.currentState!.validate()) {
                          //   FocusManager.instance.primaryFocus?.unfocus();
                          //   // login.login();
                          // }
                        },
                      ),

                      // 20.h,
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
