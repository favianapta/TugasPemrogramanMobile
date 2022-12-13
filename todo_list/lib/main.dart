import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todo_list/block_observer.dart';
import 'package:todo_list/layout/Home_Layout.dart';


void main() {
  BlocOverrides.runZoned(
        () {
      // Use cubits...
    },
    blocObserver: MyBlocObserver(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}