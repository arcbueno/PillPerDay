import 'package:flutter/material.dart';
import 'package:pill_per_day/injection_list.dart';
import 'package:pill_per_day/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getProviderList().then(
    (providers) => runApp(
      MultiProvider(
        providers: providers,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PillPerDay',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
      ),
      initialRoute: '/',
      routes: Routes().routes,
    );
  }
}
