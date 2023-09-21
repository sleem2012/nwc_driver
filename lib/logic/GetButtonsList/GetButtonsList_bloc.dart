import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/error/failures.dart';
import '../../shared/api_client/dio_client_helper.dart';
import '../../shared/api_client/endpoints.dart';
import '../../../di.dart';
import 'GetButtonsList_state.dart';

class GetButtonsListBloc extends Cubit<GetButtonsListState> {
  GetButtonsListBloc() : super(const GetButtonsListState.initial());

  static GetButtonsListBloc of(BuildContext context) => BlocProvider.of<GetButtonsListBloc>(context);

GetButtonsListModel? model;
  get({required int deviceModelId}) async {
    try {
      emit(const GetButtonsListState.loading());
      final result = await get_GetButtonsList(deviceModelId: deviceModelId);
      result.fold(
        (l) {
          debugPrint('================= GetButtonsList Bloc : ${KFailure.toError(l)}');
          emit(GetButtonsListState.error(error: l));
        },
        (r) {
          model=r;
          debugPrint('================= GetButtonsList Bloc : ${r.toString()}  ');
          emit(GetButtonsListState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetButtonsList Bloc (Catch): ${e.toString()} ');
      emit(const GetButtonsListState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }


  Future<Either<KFailure, GetButtonsListModel>> get_GetButtonsList({required int deviceModelId}) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.get_buttons_list,params: {
      "DeviceModelId":deviceModelId
    });
    final result = await ApiClientHelper.responseOrFailure(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(GetButtonsListModel.fromJson(r)),
    );
  }


}

class GetButtonsListModel {
  List<ButtonsValue>? value;

  GetButtonsListModel({this.value});

  GetButtonsListModel.fromJson(Map<String, dynamic> json) {
    if (json['value'] != null) {
      value = <ButtonsValue>[];
      json['value'].forEach((v) {
        value!.add(ButtonsValue.fromJson(v));
      });
    }
  }

}

class ButtonsValue {
  int? id;
  String? name;
  String? commandHexacode;

  ButtonsValue({this.id, this.name, this.commandHexacode});

  ButtonsValue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    commandHexacode = json['command_hexacode'];
  }


}


