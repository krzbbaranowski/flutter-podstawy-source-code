import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';

import '../../../../styles/custom_dimens.dart';
import '../../../../widgets/primary_button.dart';
import '../../../../widgets/secondary_button.dart';
import '../../cubit/dashboard_cubit.dart';

class NewTaskActions extends StatelessWidget {
  final TextEditingController textFieldController;

  const NewTaskActions(this.textFieldController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PrimaryButton(
          color: MyColors.vividCrimson,
          title: "Add",
          onTapAction: () => _onAddClicked(context),
          height: CustomDimens.buttonSmallHeight,
          radius: CustomDimens.buttonSmallRadius,
        ),
        const SizedBox(
          width: Dimens.normalMargin,
        ),
        SecondaryButton(
          color: MyColors.vividCrimson,
          title: "Cancel",
          onTapAction: () => _onCancelClicked(context),
          height: CustomDimens.buttonSmallHeight,
          radius: CustomDimens.buttonSmallRadius,
        )
      ],
    );
  }

  void _onAddClicked(BuildContext context) {
    _unfocus();
    BlocProvider.of<DashboardCubit>(context, listen: false)
        .createTask(textFieldController.text);
    textFieldController.clear();
  }

  void _onCancelClicked(BuildContext context) {
    _unfocus();
    textFieldController.clear();
    BlocProvider.of<DashboardCubit>(context, listen: false).cancelAddingTask();
  }

  void _unfocus() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
