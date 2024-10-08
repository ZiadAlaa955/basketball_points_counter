import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:basketball_points_counter/Widgets/team_board.dart';
import 'package:basketball_points_counter/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "homeView";
  @override
  Widget build(BuildContext context) {
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
                teamName: 'Team A',
                score: '0',
                button1: () {},
                button2: () {},
                button3: () {},
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  indent: 60,
                  endIndent: 40,
                ),
              ),
              TeamBoard(
                teamName: 'Team B',
                score: '0',
                button1: () {},
                button2: () {},
                button3: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomElevetedButtom(
            onPressed: () {},
            text: 'Reset',
          ),
        ],
      ),
    );
  }
}
