import 'package:basketball_points_counter/cubits/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterResetState());
  int teamAPoints = 0, teamBPoints = 0;
  void teamIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetTeams() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
