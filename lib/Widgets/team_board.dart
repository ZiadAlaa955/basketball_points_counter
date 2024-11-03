import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeamBoard extends StatelessWidget {
  const TeamBoard({
    super.key,
    required this.teamName,
    required this.teamPoints,
  });
  final String teamName;
  final int teamPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'team $teamName',
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Text(
          '$teamPoints',
          style: teamPoints < 100
              ? const TextStyle(fontSize: 150)
              : const TextStyle(fontSize: 100),
        ),
        CustomElevatedButton(
          buttonName: 'Add 1 point',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: teamName, buttonNumber: 1);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
          buttonName: 'Add 2 points',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: teamName, buttonNumber: 2);
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
          buttonName: 'Add 3 points',
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: teamName, buttonNumber: 3);
          },
        ),
      ],
    );
  }
}
