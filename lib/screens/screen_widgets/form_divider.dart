import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcaflex/utils/constants/colors.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';

class KFormDivider extends StatelessWidget {
  const KFormDivider({super.key, required this.dividerText});

  final String dividerText;
  @override
  Widget build(BuildContext context) {

    final dark = KHelperfunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? KColors.darkGrey : KColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          KTexts.orSignInWith.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
              color: dark ? KColors.darkGrey : KColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            )),
      ],
    );
  }
}
