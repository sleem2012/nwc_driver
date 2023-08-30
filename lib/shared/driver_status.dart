import '../data/model/order_model.dart';

class DriverStatus {
  static bool isArrivedEnabled(OrderList order) {
    return order.lastStatusID == 5 || order.lastStatusID == 6;
  }
}
