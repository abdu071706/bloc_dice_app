import 'dart:developer' as dev;
import 'dart:math' as math;

import 'package:bloc_dice_app/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Dice App')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: InkWell(
                      onTap: () {
                        context.read<HomeCubit>().soldice();
                      },
                      child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                          return Image.asset(
                            'assets/images/dice${state.solDice}.png',
                            color: Colors.red,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: InkWell(
                      onTap: () {
                        context.read<HomeCubit>().ondice();
                      },
                      child: BlocBuilder<HomeCubit, HomeState>(
                        builder: (context, state) {
                          return Image.asset(
                            'assets/images/dice${state.onDice}.png',
                            color: Colors.red,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
