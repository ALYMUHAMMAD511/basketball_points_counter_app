import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(InitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String teamLetter, required int buttonNumber})
  {
    if(teamLetter == 'A')
    {
      teamAPoints += buttonNumber;
      emit(TeamAIncrementState());
    }
    else
      {
        teamBPoints += buttonNumber;
        emit(TeamBIncrementState());
      }
  }

  void pointsReset()
  {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(InitialState());
  }
}