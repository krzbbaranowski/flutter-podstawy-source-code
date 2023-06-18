import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/constants/asset_paths.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      AssetsPaths.spaceXLogo,
      height: 20,
    );
  }
}
