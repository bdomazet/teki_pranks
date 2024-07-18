import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/widgets/background_gradient.dart';
import '../../../../core/common/widgets/row_element.dart';
import '../../../../core/theme/app_images.dart';
import '../../../../core/theme/app_sounds.dart';
import '../../../../core/utils/show_snack_bar.dart';
import '../../presentation/bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: BackgroundGradient(
          child: SafeArea(
            child: BlocConsumer<HomeBloc, HomeState>(
              listener: (BuildContext context, HomeState state) {
                if (state is SoundNotPlayed) {
                  showSnackBar(context, state.error);
                }
              },
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
                              BlocProvider.of<HomeBloc>(context).add(
                                  PlaySoundEvent(AppSounds.smilingPoopSound));
                            },
                            image: AppImages.smilingPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context).add(
                                  PlaySoundEvent(AppSounds.goofyPoopSound));
                            },
                            image: AppImages.goofyPoopImage,
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
                                  .add(PlaySoundEvent(AppSounds.madPoopSound));
                            },
                            image: AppImages.madPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(AppSounds.roflPoopSound));
                            },
                            image: AppImages.roflPoopImage,
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
                              BlocProvider.of<HomeBloc>(context).add(
                                  PlaySoundEvent(AppSounds.boredPoopSound));
                            },
                            image: AppImages.boredPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context).add(
                                  PlaySoundEvent(AppSounds.pukingPoopSound));
                            },
                            image: AppImages.pukingPoopImage,
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
                              BlocProvider.of<HomeBloc>(context).add(
                                  PlaySoundEvent(AppSounds.angelPoopSound));
                            },
                            image: AppImages.angelPoopImage,
                          ),
                          RowElement(
                            onTap: () async {
                              BlocProvider.of<HomeBloc>(context)
                                  .add(PlaySoundEvent(AppSounds.coolPoopSound));
                            },
                            image: AppImages.coolPoopImage,
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
