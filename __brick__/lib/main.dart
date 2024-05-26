import 'app_ui.dart';
import 'core/routes/router.dart';
import 'service_collection/di.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  initDI();
  runApp(const MyApp());
}


///
class MyApp extends StatelessWidget {
  ///
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "{{#pascalCase}}{{project_name}}{{/pascalCase}} App",
      theme: ModTheme.standard,
      routerConfig: router,
    );
  }
}
