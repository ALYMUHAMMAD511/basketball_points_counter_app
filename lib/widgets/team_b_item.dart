import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:basketball_points_counter_app/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/counter_cubit.dart';

class TeamBItem extends StatelessWidget {
  const TeamBItem({
    super.key,
    required this.teamLetter,
  });

  final String teamLetter;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/basketball.png',
              height: 150,
              width: 150,
            ),
            Text(
              'Team $teamLetter',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 42,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${BlocProvider
                  .of<CounterCubit>(context)
                  .teamBPoints}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 96,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomButton(
              text: 'Add 1 Point',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).teamIncrement(
                  teamLetter: 'B',
                  buttonNumber: 1,
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: 'Add 2 Points',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).teamIncrement(
                  teamLetter: 'B',
                  buttonNumber: 2,
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              text: 'Add 3 Points',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).teamIncrement(
                  teamLetter: 'B',
                  buttonNumber: 3,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
