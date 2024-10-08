import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
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
          const Text(
            'Team A',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(fontSize: 150),
          ),
          CustomElevetedButtom(
            onPressed: () {},
            text: 'Add 1 point',
          ),
          CustomElevetedButtom(
            onPressed: () {},
            text: 'Add 1 points',
          ),
          CustomElevetedButtom(
            onPressed: () {},
            text: 'Add 3 points',
          ),
        ],
      ),
    );
  }
}
