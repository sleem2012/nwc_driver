

abstract class KEndPoints {
  static String baseUrl =  'http://173.214.166.194:99/api';

  static String login = '${baseUrl}User/AuthenticateUser';
  static String logout = '${baseUrl}User/LogOut';
  static String order = '${baseUrl}Driver/GetWorkOrders';
  static String reject_reasons = '${baseUrl}Lookup/GetFailToDeliverReasons';
  static String update_order = '${baseUrl}Driver/ChangeWorkOrderStatus';
  static String order_by_id = '${baseUrl}Driver/GetOrderBasicDetails';
  static String send_commands= '$baseUrl/Device/SetDeviceCommand';
  static String get_device_details= '$baseUrl/Device/GetDeviceDetails';
  static String getDevicesList= '$baseUrl/Device/GetDevicesList';
  static String get_buttons_list= '$baseUrl/Lookup/GetDeviceTypeCommandsList';






}
