import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/features/rocket_details/pages/widgets/selector/rockets_selector.dart';

import '../../../di/di.dart';
import '../cubit/rocket_details_cubit.dart';
import '../cubit/rocket_details_state.dart';
import 'widgets/rocket_details /rocket_details.dart';

class RocketDetailsPage extends StatefulWidget {
  const RocketDetailsPage({super.key});

  @override
  State<RocketDetailsPage> createState() => _RocketDetailsPageState();
}

class _RocketDetailsPageState extends State<RocketDetailsPage> {
  RocketDetailsCubit? _cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return BlocProvider<RocketDetailsCubit>(create: (context) {
      _cubit = sl<RocketDetailsCubit>();
      _cubit!.initialize();
      return _cubit!;
    }, child: BlocBuilder<RocketDetailsCubit, RocketDetailsState>(
      builder: (context, state) {
        if (state is RocketsLoaded) {
          return _buildRocketsLoadedState(state);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    ));
  }

  Widget _buildRocketsLoadedState(RocketsLoaded state) {
    return Column(
      children: [
        RocketsSelector(state: state),
        Expanded(child: RocketDetails(state: state))
      ],
    );
  }

  @override
  void dispose() {
    _cubit?.close();
    super.dispose();
  }
}
