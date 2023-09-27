import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/model/user_model.dart';
import '../../data/repository/auth/auth_repo.dart';
import '../../shared/cache/locale_storage.dart';

import 'login_state.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc({required this.authRepoImpl}) : super(const LoginState.initial());

  static LoginBloc of(BuildContext context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;
  UserModel? userModel;

  bool isVisible = true;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  login() async {
    emit(const LoginState.loading());
    try {
      if (userNameController.text=="admin"&&passController.text=="admin"){
         emit(LoginState.success());
          KStorage.i.setToken("32423423423234");

      }
      else{
            emit(const LoginState.error(failure: "Invalid credentials"));

      }
      // final result = await authRepoImpl.login(userName: userNameController.text, password: passController.text);
      // result.fold(
      //   (l) {
      //     emit(LoginState.error(failure: l));
      //     debugPrint('================= Login (Bloc): Failed => $l ');
      //
      //   },
      //   (r) {
      //     // userModel = r;
      //     KStorage.i.setUserInfo(userModel);
      //     emit(LoginState.success(loginModel: userModel!));
      //     debugPrint('================= Login (Bloc): Success => $r ');
      //   },
      // );
    } catch (e) {
      debugPrint('================= Login (Bloc) (catch):  $e');
      emit(const LoginState.error(failure: "KFailure.someThingWrongPleaseTryAgain()"));
      rethrow;

    }
  }

  togglePassV() {
    isVisible = !isVisible;
    emit(const LoginState.loading());
    emit(const LoginState.initial());
  }
}
