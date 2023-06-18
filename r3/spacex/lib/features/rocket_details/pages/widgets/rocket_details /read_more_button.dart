import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_podstawy_utilities/colors/my_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ReadMoreButton extends StatelessWidget {
  final Uri uri;

  const ReadMoreButton({super.key, required this.uri});

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: MyColors.ufoGreen,
        textStyle: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: MyColors.white));

    return ElevatedButton(
        style: buttonStyle,
        onPressed: () => launchUrl(uri),
        child: Text(tr("read_more")));
  }
}
