import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TeamBoard extends StatelessWidget {
  const TeamBoard({
    super.key,
    required this.score,
    this.button1,
    this.button2,
    this.button3,
    required this.teamName,
  });

  final String teamName;
  final int score;
  final void Function()? button1, button2, button3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teamName,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Text(
          score.toString(),
          style: const TextStyle(fontSize: 150),
        ),
        CustomElevatedButton(
          onPressed: button1,
          buttonName: 'Add 1 point',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
          onPressed: button2,
          buttonName: 'Add 2 points',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevatedButton(
          onPressed: button3,
          buttonName: 'Add 3 points',
        ),
      ],
    );
  }
}
