import 'package:flutter/material.dart';
import 'package:mcaflex/utils/constants/colors.dart';
import 'package:mcaflex/utils/constants/image_strings.dart';
import 'package:mcaflex/utils/constants/sizes.dart';

class KSocialButtons extends StatelessWidget {
  const KSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: KColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: KSizes.iconMd,
              height: KSizes.iconMd,
              image: AssetImage(KImages.google),
            ),
          ),
        ),
        SizedBox(
          width: KSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: KColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: KSizes.iconMd,
              height: KSizes.iconMd,
              image: AssetImage(KImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
