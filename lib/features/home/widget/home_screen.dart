import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../custom_widgets/background_gradient.dart';
import '../../../custom_widgets/row_element.dart';
import '../../../utils/constants.dart';
import '../bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: BackgroundGradient(
          child: SafeArea(
            child: BlocConsumer<HomeBloc, HomeState>(
              listener: (BuildContext context, HomeState state) {},
              builder: (BuildContext context, HomeState state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RowElement(
                            onTap: () {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(smilingPoopSound));
                            },
                            image: smilingPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(goofyPoopSound));
                            },
                            image: goofyPoopImage,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(madPoopSound));
                            },
                            image: madPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(roflPoopSound));
                            },
                            image: roflPoopImage,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(boredPoopSound));
                            },
                            image: boredPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(pukingPoopSound));
                            },
                            image: pukingPoopImage,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(angelPoopSound));
                            },
                            image: angelPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(coolPoopSound));
                            },
                            image: coolPoopImage,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
