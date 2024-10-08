import 'package:basketball_points_counter/Views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BasketBallPointsCounter());
}

class BasketBallPointsCounter extends StatelessWidget {
  const BasketBallPointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
