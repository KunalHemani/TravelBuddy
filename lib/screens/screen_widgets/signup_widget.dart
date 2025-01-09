import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcaflex/utils/constants/colors.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';

class KSignupWidget extends StatelessWidget {
  const KSignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperfunction.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  // expands: false,
                  decoration: InputDecoration(
                    labelText: KTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              SizedBox(width: KSizes.spaceBtwInputFields,),

              Expanded(
                child: TextFormField(
                  // expands: false,
                  decoration: InputDecoration(
                    labelText: KTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: KSizes.spaceBtwInputFields,),

          // Username
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: KTexts.username, prefixIcon: Icon(Iconsax.user_edit)
            ),
          ),

          SizedBox(height: KSizes.spaceBtwInputFields,),

          // Email
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: KTexts.email, prefixIcon: Icon(Iconsax.direct)
            ),
          ),

          SizedBox(height: KSizes.spaceBtwInputFields,),

          // Phone Number
          TextFormField(
            expands: false,
            decoration: InputDecoration(
                labelText: KTexts.phoneNo, prefixIcon: Icon(Iconsax.call)
            ),
          ),

          SizedBox(height: KSizes.spaceBtwInputFields,),

          // Password
          TextFormField(
            expands: false,
            decoration: InputDecoration(
              labelText: KTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          SizedBox(height: KSizes.spaceBtwInputFields,),

          // Terms & Condition Checker
          Row(
            children: [
              SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value) {})),

              SizedBox(width: KSizes.spaceBtwItems,),

              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: '${KTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: '${KTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? KColors.white : KColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? KColors.white : KColors.primary
                    )),
                    TextSpan(text: ' ${KTexts.and}', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: ' ${KTexts.termsofUse} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? KColors.white : KColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: dark ? KColors.white : KColors.primary
                    )),
                  ]
              ))
            ],
          ),

          SizedBox(height: KSizes.spaceBtwSections,),

          // Sign Up Button
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text(KTexts.createAccount)),)
        ],
      ),
    );
  }
}
