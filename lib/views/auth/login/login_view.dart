import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../di.dart';
import '../../../logic/login/login_bloc.dart';
import '../../../logic/login/login_state.dart';
import '../../../shared/constants.dart';
import '../../../shared/extensions.dart';
import '../../../shared/localization/trans.dart';
import '../../../shared/theme/colors.dart';
import '../../../shared/theme/helper.dart';
import '../../../shared/theme/text_theme.dart';
import '../../../shared/widgets/custom_button.dart';
import '../../../shared/widgets/lang_toggle_btn.dart';
import '../../../shared/widgets/loading/loading_overlay.dart';
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
      body: BlocProvider(
        create: (context) => Di.loginBloc,
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (userModel) async {
                 await Di.reset(context);
                Nav.offAll(const MainNavPages());
              },
            );
          },
          builder: (context, state) {
            final login = LoginBloc.of(context);

            return Form(
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
                          child: KLoadingOverlay(
                            isLoading: state is LoginStateLoading,

                            child: Column(children: [
                              SizedBox(
                                  width: Get.width * .3,
                                  child: const LangDropDown()),

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
                                controller: login.userNameController,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return Tr.get.name_validation;
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: KHelper.listPadding),
                              KTextFormField(
                                controller: login.passController,
                                hintText: Tr.get.password,

                                obscureText: login.isVisible,
                                validator: (p0) {
                                  if (p0!.isEmpty) {
                                    return Tr.get.pass_validation;
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.visiblePassword,

                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: login.isVisible
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                                  onPressed: () {
                                    login.togglePassV();
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

                                  if (formKey.currentState!.validate()) {
                                    FocusManager.instance.primaryFocus?.unfocus();
                                    login.login();
                                  }
                                },
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
