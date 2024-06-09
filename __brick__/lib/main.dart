import 'core/routes/router.dart';
import 'service_collection/di.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:logger/logger.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Logger logger = Logger(
  printer: PrettyPrinter(),
);

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  initDI();
   runApp(
    /// Text(context.tr('title'))
    /// Text('title').tr() //Not Recommended
    /// var title = tr('title') //Static function
    /// More about EasyLocalization https://pub.dev/packages/easy_localization
    /// Change Locale -  context.setLocale(Locale('en', 'US'));

    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ar', 'OM')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}


///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        EasyLoading.instance
          ..displayDuration = const Duration(milliseconds: 2000)
          ..indicatorType = EasyLoadingIndicatorType.dualRing
          ..loadingStyle = EasyLoadingStyle.light
          ..indicatorSize = 45.0
          ..radius = 10.0
          ..progressColor = Colors.yellow
          ..backgroundColor = Colors.white70
          ..indicatorColor = Colors.white
          ..textColor = Colors.yellow
          ..maskColor = Colors.blue.withOpacity(0.1)
          ..userInteractions = false;

        return FlutterEasyLoading(child: child);
      },
      title: "{{#pascalCase}}{{project_name}}{{/pascalCase}}",
      theme: {{#pascalCase}}{{project_name}}{{/pascalCase}}Theme.standard,
      routerConfig: router,
    );
  }
}
