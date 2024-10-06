import 'package:basketball_points_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/widgets/custom_button.dart';
import 'package:basketball_points_counter_app/widgets/team_a_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import '../widgets/team_b_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Basketball Points Counter',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: HexColor('#F26F15'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamAItem(teamLetter: 'A'),
                  SizedBox(
                    height: 525,
                    child: VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  TeamBItem(teamLetter: 'B'),
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              CustomButton(
                text: 'Reset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).pointsReset();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}