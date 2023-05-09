import 'dart:math';

import 'package:bloc/bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(onDice: 1, solDice: 3));
  void soldice() {
    emit(HomeState(
        onDice: state.onDice = Random().nextInt(6) + 1,
        solDice: state.solDice = Random().nextInt(6) + 1));
  }
    void ondice() {
    emit(HomeState(
        onDice: state.onDice = Random().nextInt(6) + 1,
        solDice: state.solDice = Random().nextInt(6) + 1));
  }
}
