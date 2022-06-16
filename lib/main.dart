import 'package:contador/provider/contador_provider.dart';
import 'package:contador/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const StateApp());


class StateApp extends StatelessWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

   ChangeNotifierProvider(create: (_)=>ContadorProvider()),
    ],child:MyApp(),);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador',
       initialRoute: '/',
        routes:({
         
         '/':(context) => const HomeScreen(),


        }),
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
      );
  
  }
}