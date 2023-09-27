import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../data/model/devices_list_model.dart';
import '../../../data/model/motor_model.dart';
import '../../../logic/get_devices/get_devices_bloc.dart';
import '../../../logic/get_devices/get_devices_state.dart';
import '../../../shared/widgets/image_widget.dart';
import '../../../shared/widgets/loading/loading_overlay.dart';
import '../../../shared/widgets/nav.dart';
import '../details/electric_meter_details.dart';
import 'widget/electric_item.dart';

class ElectrictyHomeScreen extends StatelessWidget {
  const ElectrictyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetDevicesBloc()..get(),
      child: BlocBuilder<GetDevicesBloc, GetDevicesState>(
        builder: (context, state) {
          final apiModel = GetDevicesBloc.of(context).devicesListModel;
          return KRequestOverlay(
            isLoading: state is GetDevicesStateLoading,
            child: RefreshIndicator(
              onRefresh: () async {
                await GetDevicesBloc.of(context).get();
              },
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                itemBuilder: (context, index) {
                  final staticModel = DevicesList.list;
                  return InkWell(
                      onTap: () {
                        Nav.to(ElectricMeterDetailsScreen(
                          model: apiModel?.value?[index] ?? DeviceListValue(),

                        ));
                      },
                      child: ElictricItem(
                        model: apiModel?.value?[index] ?? DeviceListValue(),

                      ));
                },
                itemCount: apiModel?.value?.length ?? 0,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    height: Get.height * .07,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
