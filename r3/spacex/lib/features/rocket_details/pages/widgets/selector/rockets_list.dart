import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../../cubit/rocket_details_cubit.dart';
import '../../../models/rocket_item.dart';

class RocketsList extends StatelessWidget {
  final List<RocketItem> rockets;

  const RocketsList({super.key, required this.rockets});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Center(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: rockets.length,
            itemBuilder: (context, index) =>
                _buildItem(rockets[index], context)),
      ),
    );
  }

  Widget _buildItem(RocketItem rocket, BuildContext context) {
    var textTheme = _getTextStyleFor(rocket.isSelected, context);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          BlocProvider.of<RocketDetailsCubit>(context, listen: false)
              .changeRocket(rocket.id);
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.hugeMargin, vertical: Dimens.mediumMargin),
            child: Text(
              rocket.name,
              style: textTheme,
            ),
          ),
        ),
      ),
    );
  }

  TextStyle? _getTextStyleFor(bool isSelected, BuildContext context) {
    return isSelected
        ? Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold, color: MyColors.darkCharcoal)
        : Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: MyColors.white);
  }
}
