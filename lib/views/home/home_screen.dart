import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/order_model.dart';
import '../../logic/get_orders/get_orders_bloc.dart';
import '../../logic/get_orders/get_orders_state.dart';
import '../../shared/widgets/load_more_wrapper.dart';
import '../../shared/widgets/loading/loading_overlay.dart';
import '../../shared/widgets/shimmer_box.dart';
import 'widget/request_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOrdersBloc, GetOrdersState>(
      builder: (context, state) {
        final order = GetOrdersBloc.of(context).get_ordersModel;
        return KRequestOverlay(
          isLoading: state is GetOrdersStateLoading,
          loadingWidget: const ShimmerList(),
          child: LoadMoreWrapper(

            onLoadMore: () async {
              GetOrdersBloc.of(context).get_orders(loadMore: true);
            },
            onRefresh: () async {
              GetOrdersBloc.of(context).get_orders(loadMore: false);
            },
            itemBuilder: (context, index) {
              return  RequestTile(order: order?.result?[index]??OrderList(),);
            },
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 80),
            itemCount: order?.result?.length ?? 0,
            isLoadingMore:
                state.maybeWhen(orElse: () => false, loadMore: () => true),
            crossAxisCount: 1,
          ),
        );
      },
    );
  }
}
