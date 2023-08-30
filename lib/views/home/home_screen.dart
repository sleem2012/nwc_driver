import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/model/order_model.dart';
import '../../logic/get_orders/get_orders_bloc.dart';
import '../../logic/get_orders/get_orders_state.dart';
import '../../shared/extensions.dart';
import '../../shared/localization/trans.dart';
import '../../shared/theme/text_theme.dart';
import '../../shared/widgets/load_more_wrapper.dart';
import '../../shared/widgets/loading/loading_overlay.dart';
import '../../shared/widgets/shimmer_box.dart';
import 'widget/request_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    GetOrdersBloc.of(context).get_orders(loadMore: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetOrdersBloc, GetOrdersState>(
      builder: (context, state) {
        final order = GetOrdersBloc.of(context).get_ordersModel;
        return KRequestOverlay(
          isLoading: state is GetOrdersStateLoading,
          loadingWidget: const ShimmerList(),
          child: (order?.result??[]).isNotEmpty?LoadMoreWrapper(

            onLoadMore: () async {
              GetOrdersBloc.of(context).get_orders(loadMore: true);
            },
            onRefresh: () async {
              GetOrdersBloc.of(context).get_orders(loadMore: false);
            },
            itemBuilder: (context, index) {
              return RequestTile(
                order: order?.result?[index] ?? OrderList(),
              );
            },
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
            itemCount: order?.result?.length ?? 0,
            isLoadingMore:
                state.maybeWhen(orElse: () => false, loadMore: () => true),
            crossAxisCount: 1,

          ):Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/no orders.svg"),
              10.h,
              Text(Tr.get.no_order,style: KTextStyle.of(context).body,)
            ],
          )
        );
      },
    );
  }
}
