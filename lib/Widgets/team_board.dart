import 'package:basketball_points_counter/Widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TeamBoard extends StatelessWidget {
  const TeamBoard({
    super.key,
    required this.teamName,
    required this.score,
    this.button1,
    this.button2,
    this.button3,
  });

  final String teamName, score;
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
          score,
          style: const TextStyle(fontSize: 150),
        ),
        CustomElevetedButtom(
          onPressed: button3,
          text: 'Add 1 point',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevetedButtom(
          onPressed: button2,
          text: 'Add 1 points',
        ),
        const SizedBox(
          height: 10,
        ),
        CustomElevetedButtom(
          onPressed: button3,
          text: 'Add 3 points',
        ),
      ],
    );
  }
}
