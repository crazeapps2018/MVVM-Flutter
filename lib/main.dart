import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_){
      runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider.value(value: MediaViewModel()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Player',
      theme: ThemeData(
        appBarTheme: AppBarTheme(),
        primarySwatch: Colors.purple,
        hintColor:Colors.deepOrange
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
    );
  }
}
