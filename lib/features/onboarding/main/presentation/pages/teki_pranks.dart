import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/pages/home_page.dart';
import '../../../splash/splash_screen.dart';
import '../bloc/teki_pranks_bloc.dart';

class TekiPranks extends StatelessWidget {
  const TekiPranks({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocConsumer<TekiPranksBloc, TekiPranksState>(
        listener: (BuildContext context, TekiPranksState state) {},
        builder: (BuildContext context, TekiPranksState state) {
          if (state is SplashScreenState) {
            return const SplashScreen();
          }
          return const HomeScreen();
        },
      ),
    );
  }
}
