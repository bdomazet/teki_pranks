import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/bloc/home_bloc.dart';
import 'features/onboarding/main/presentation/bloc/teki_pranks_bloc.dart';
import 'features/onboarding/main/presentation/pages/teki_pranks.dart';
import 'init_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    <DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ],
  );
  await initDependencies();
  runApp(
    MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<TekiPranksBloc>(
          create: (BuildContext context) => serviceLocator<TekiPranksBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (BuildContext context) => serviceLocator<HomeBloc>(),
        )
      ],
      child: const TekiPranks(),
    ),
  );
}
