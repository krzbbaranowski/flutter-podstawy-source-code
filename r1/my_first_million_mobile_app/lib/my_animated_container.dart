import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';

class MyAnimatedContainer extends StatefulWidget {
  final Color firstColor;
  final Color secondColor;
  final bool shouldUseFancyShape;

  const MyAnimatedContainer(
      {this.firstColor = MyColors.indigo,
      this.secondColor = MyColors.vividGamboge,
      this.shouldUseFancyShape = false});

  @override
  State<MyAnimatedContainer> createState() => MyAnimatedContainerState();
}

class MyAnimatedContainerState extends State<MyAnimatedContainer> {
  late Color containerColor;

  @override
  void initState() {
    super.initState();

    containerColor = widget.firstColor;
  }

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration;

    if (widget.shouldUseFancyShape) {
      boxDecoration = BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(30),
      );
    } else {
      boxDecoration = BoxDecoration(
        color: containerColor,
      );
    }

    return _buildBaseContainer(boxDecoration);
  }

  Widget _buildBaseContainer(BoxDecoration decoration) {
    return GestureDetector(
      onTap: () {
        setState(() {
          containerColor = containerColor == widget.firstColor
              ? widget.secondColor
              : widget.firstColor;
        });
      },
      child: AnimatedContainer(
        width: 50,
        height: 50,
        decoration: decoration,
        duration: const Duration(milliseconds: 700),
      ),
    );
  }
}
