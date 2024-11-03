import 'package:basketball_points_counter/Views/home_view.dart';
import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketBallPointsCounter());
}

class BasketBallPointsCounter extends StatelessWidget {
  const BasketBallPointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => const HomeView(),
        },
        initialRoute: HomeView.id,
      ),
    );
  }
}
