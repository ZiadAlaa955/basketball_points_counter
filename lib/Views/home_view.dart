import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:basketball_points_counter/Widgets/team_board.dart';
import 'package:basketball_points_counter/constants.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static String id = "homeView";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int scoreA = 0, scoreB = 0;
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
                score: scoreA,
                button1: () {
                  scoreA++;
                  setState(() {});
                },
                button2: () {
                  scoreA += 2;
                  setState(() {});
                },
                button3: () {
                  scoreA += 3;
                  setState(() {});
                },
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
                score: scoreB,
                button1: () {
                  scoreB++;
                  setState(() {});
                },
                button2: () {
                  scoreB += 2;
                  setState(() {});
                },
                button3: () {
                  scoreB += 3;
                  setState(() {});
                },
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CustomElevatedButton(
            buttonName: 'Reset',
            onPressed: () {
              scoreA = 0;
              scoreB = 0;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
