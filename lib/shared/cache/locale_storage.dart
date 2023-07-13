import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';



class KStorageKeys {
  static const String themeMode = 'themeMode';
  static const String locale = 'locale';
  static const String lang = 'language';

  static const String token = 'token';
  static const String fcmToken = 'fcmToken';
  static const String userModel = 'userModel';
  static const String isSplashSeen = 'isSplashSeen';
  static const String settings = 'settings';


}

class KStorage {
  KStorage();
  final GetStorage _storage = GetStorage();
  static KStorage i = _kStorage;

  static KStorage get _kStorage {
    if (GetIt.instance.isRegistered<KStorage>()) {
      return GetIt.instance.get<KStorage>();
    } else {
      GetIt.instance.registerLazySingleton(() => KStorage());
      return GetIt.instance.get<KStorage>();
    }
  }

  get erase async => await _storage.erase();


  setToken(String? token) => _storage.write(KStorageKeys.token, token);
  get delToken => _storage.remove(KStorageKeys.token);
  String? get getToken => _storage.read(KStorageKeys.token);



  setLang(String lang) => _storage.write(KStorageKeys.lang, lang);
  String? get getLang => _storage.read(KStorageKeys.lang);


  setIsSplashSeen() => _storage.write(KStorageKeys.isSplashSeen, true);
  bool get isSplashSeen => _storage.read(KStorageKeys.isSplashSeen) ?? false;

  setFcmToken(String? token) => _storage.write(KStorageKeys.fcmToken, token);
  String? get getFcmToken => _storage.read(KStorageKeys.fcmToken);


}
