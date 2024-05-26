import 'package:get_it/get_it.dart';


///
GetIt getIt = GetIt.instance;

///
void initDI(){
  //   getIt.registerLazySingleton(() => ApiClient());
  //   getIt.registerFactory(() => OTPRepo());

}

/// T get<T extends Object>(String instanceName)
T locate<T extends Object>({String? instanceName}) => instanceName == null
    ? getIt.get<T>()
    : getIt.get<T>(instanceName: instanceName);
