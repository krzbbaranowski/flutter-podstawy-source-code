import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:flutter_podstawy_utilities/constants/dimens.dart';
import 'package:my_first_million_mobile_app/my_animated_container.dart';
import 'dart:math' as math;

class DemoPage extends StatefulWidget {
  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  static List<Color> gradient1 = [MyColors.ufoGreen, MyColors.melon];
  static List<Color> gradient2 = [MyColors.trueV, MyColors.hopbush];

  List<Color> currentGradient = gradient1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("FAB was clicked!")));
          },
          backgroundColor: MyColors.fireEngineRed,
          child: const Icon(
            Icons.warning_amber,
            color: MyColors.white,
          ),
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  transform: const GradientRotation(math.pi / 4),
                  colors: currentGradient)),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: _buildContent(),
          ),
        ),
      );
  }

  Widget _buildContent() {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        _buildTitle(),
        _buildFirstRow(),
        _buildButton()
      ],
    );
  }

  Widget _buildTitle() {
    return const Text("My first million app!",
        style: TextStyle(
          color: MyColors.darkCharcoal,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ));
  }

  Widget _buildFirstRow() {
    return const Row(
      children: [
        MyAnimatedContainer(),
        Padding(
          padding: EdgeInsets.all(Dimens.normalMargin),
          child: MyAnimatedContainer(),
        ),
        MyAnimatedContainer(),
        Padding(
          padding: EdgeInsets.all(Dimens.hugeMargin),
          child: MyAnimatedContainer(),
        ),
      ],
    );
  }

  Widget _buildButton() {
    return FilledButton(
        style: FilledButton.styleFrom(backgroundColor: MyColors.vividCrimson),
        onPressed: () {
          setState(() {
            currentGradient =
                currentGradient == gradient1 ? gradient2 : gradient1;
          });
        },
        child: const Text(
          "Update background",
          style: TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
