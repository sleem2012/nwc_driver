import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'data/repository/auth/auth_repo.dart';
import 'data/repository/electric/pending_commands/pending_commands_repo.dart';
import 'data/repository/electric/send_commands/send_commands_repo.dart';
import 'data/repository/order/order_repo.dart';
import 'logic/get_order_by_id/get_order_by_id_bloc.dart';
import 'logic/get_orders/get_orders_bloc.dart';
import 'logic/get_reject_reasons/get_reject_reasons_bloc.dart';
import 'logic/login/login_bloc.dart';
import 'logic/logout/logout_bloc.dart';
import 'logic/pendng_commands/pendng_commands_bloc.dart';
import 'logic/send_commands/send_commands_bloc.dart';
import 'logic/update_order_bloc/update_order_bloc.dart';
import 'shared/api_client/api_client_impl.dart';
import 'shared/api_middleware_bloc/api_client_bloc.dart';
import 'shared/observer.dart';

import 'logic/theme/theme_cubit.dart';
import 'main.dart';

abstract class Di {
  static final GetIt _i = GetIt.instance;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GetStorage.init();
    Bloc.observer = MyBlocObserver();
    // await NotificationCtrl.fcm_init('Forall Sales');
    _reg();
  }

  static Future reset(context) async {
    await _unReg();
    RestartWidget.restartApp(context);
    await _i.resetScope(dispose: true);
    _reg();
  }

  static _reg() {
    ///Repos

    _i.registerLazySingleton(() => DioClientImpl(apiClientBloc: _i()));
    _i.registerLazySingleton(() => Connectivity());
    _i.registerLazySingleton(() => ThemeBloc());
    _i.registerLazySingleton(() => ApiClientBloc());
    _i.registerLazySingleton(() => ImagePicker());
    _i.registerLazySingleton(() => AuthRepoImpl());
    _i.registerLazySingleton(() => OrderRepoImp());

    //electric
    _i.registerLazySingleton(() => SendCommandsRepoImp());
    _i.registerLazySingleton(() => PendingCommandsRepoImp());


    ///bloc

    _i.registerFactory(() => LoginBloc(authRepoImpl: _i()));
    _i.registerFactory(() => LogoutBloc(authRepoImpl: _i()));
    _i.registerFactory(() => GetOrdersBloc(getOrdersRepoImp: _i()));
    _i.registerFactory(() => GetOrderByIdBloc(repoImp: _i()));
    _i.registerFactory(() => GetRejectReasonsBloc(getRejectReasonsRepoImp: _i()));
    _i.registerFactory(() => UpdateOrderBloc(updateOrderBlocRepoImp: _i()));

    //electric
    _i.registerFactory(() => SendCommandsBloc(sendCommandsRepoImp: _i()));
    _i.registerFactory(() => PendngCommandsBloc(pendngCommandsRepoImp: _i()));


  }

  static _unReg() async {
    await _i.unregister<DioClientImpl>();

    await _i.unregister<Connectivity>();
    await _i.unregister<ThemeBloc>();
    await _i.unregister<ApiClientBloc>();

    await _i.unregister<ImagePicker>();
    await _i.unregister<AuthRepoImpl>();
    await _i.unregister<LoginBloc>();
    await _i.unregister<LogoutBloc>();
    await _i.unregister<GetOrdersBloc>();
    await _i.unregister<OrderRepoImp>();
    await _i.unregister<UpdateOrderBloc>();
    await _i.unregister<GetOrderByIdBloc>();
    await _i.unregister<SendCommandsBloc>();
    await _i.unregister<SendCommandsRepoImp>();
    await _i.unregister<PendingCommandsRepoImp>();
    await _i.unregister<PendngCommandsBloc>();
  }

  // getters
  static DioClientImpl get dioClient => _i.get<DioClientImpl>();

  static Connectivity get connectivity => _i.get<Connectivity>();

  static ThemeBloc get themeBloc => _i.get<ThemeBloc>();

  static ApiClientBloc get apiClientBloc => _i.get<ApiClientBloc>();

  static ImagePicker get imagePicker => _i.get<ImagePicker>();

  static LoginBloc get loginBloc => _i.get<LoginBloc>();

  static LogoutBloc get logOut => _i.get<LogoutBloc>();

    static GetOrdersBloc get getOrdersBloc => _i.get<GetOrdersBloc>();
    static GetRejectReasonsBloc get getRejectReasons=> _i.get<GetRejectReasonsBloc>();

    static UpdateOrderBloc get updateOrderBloc => _i.get<UpdateOrderBloc>();
    static GetOrderByIdBloc get getOrderById => _i.get<GetOrderByIdBloc>();
    static SendCommandsBloc get sendCommand => _i.get<SendCommandsBloc>();
    static PendngCommandsBloc get getPendingCommands => _i.get<PendngCommandsBloc>();



}
