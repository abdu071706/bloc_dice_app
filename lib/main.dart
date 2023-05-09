
import 'package:bloc_dice_app/cubit/home_cubit.dart';
import 'package:bloc_dice_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context)=>  HomeCubit(),
        child: HomePage(),
      ),
    );
  }
}
