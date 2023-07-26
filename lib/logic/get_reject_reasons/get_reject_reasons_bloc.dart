import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/reject_reasons_model.dart';
import '../../data/repository/order/order_repo.dart';
import '../../shared/error/failures.dart';
import 'get_reject_reasons_state.dart';

class GetRejectReasonsBloc extends Cubit<GetRejectReasonsState> {
  GetRejectReasonsBloc({required this.getRejectReasonsRepoImp}) : super(const GetRejectReasonsState.initial());

  static GetRejectReasonsBloc of(BuildContext context) => BlocProvider.of<GetRejectReasonsBloc>(context);


  final OrderRepoImp getRejectReasonsRepoImp;

   RejectReasonsModel? model= RejectReasonsModel();

  get() async {
    try {
      emit(const GetRejectReasonsState.loading());
      final result = await getRejectReasonsRepoImp.get_reject_reasons();
      result.fold(
        (l) {
          debugPrint('================= GetRejectReasons Bloc : ${KFailure.toError(l)}');
          emit(GetRejectReasonsState.error(error: l));
        },
        (r) {
          debugPrint('================= GetRejectReasons Bloc : ${r.toString()}  ');
          model = r;
          emit(GetRejectReasonsState.success(model: r));
        },
      );
    } catch (e) {
      debugPrint('================= GetRejectReasons Bloc (Catch): ${e.toString()} ');
      emit(const GetRejectReasonsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
