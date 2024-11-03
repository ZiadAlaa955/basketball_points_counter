import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:basketball_points_counter/Widgets/team_board.dart';
import 'package:basketball_points_counter/constants.dart';
import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: kPrimaryColor,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamBoard(
                    teamName: 'A',
                    teamPoints:
                        BlocProvider.of<CounterCubit>(context).teamAPoints,
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      indent: 60,
                      endIndent: 40,
                    ),
                  ),
                  TeamBoard(
                    teamName: 'B',
                    teamPoints:
                        BlocProvider.of<CounterCubit>(context).teamBPoints,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomElevatedButton(
                buttonName: 'Reset',
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetTeams();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
