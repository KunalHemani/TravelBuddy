// signup.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcaflex/controller/signup_controller.dart';
import 'package:mcaflex/screens/home_screen.dart';
import 'package:mcaflex/screens/screen_widgets/form_divider.dart';
import 'package:mcaflex/screens/screen_widgets/socialbuttons.dart';
import 'package:mcaflex/utils/constants/colors.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';
import 'package:mcaflex/utils/validator/validation.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    final dark = KHelperfunction.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                KTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              // Signup Form
              Form(
                key: controller.signupFormkey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: controller.firstName,
                            validator: (value) => KValidator.validateEmptyText('First Name', value),
                            // validator: (value) => KValidator.validateName(value),
                            decoration: InputDecoration(
                              labelText: KTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: KSizes.spaceBtwInputFields,
                        ),

                        Expanded(
                          child: TextFormField(
                            controller: controller.lastName,
                            validator: (value) => KValidator.validateEmptyText('last Name', value),
                            // validator: (value) => KValidator.validateName(value),
                            decoration: InputDecoration(
                              labelText: KTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwInputFields,
                    ),

                    // Username
                    TextFormField(
                      controller: controller.username,
                      validator: (value) => KValidator.validateEmptyText('Username', value),
                      // validator: (value) => KValidator.validateUsername(value),
                      decoration: InputDecoration(
                          labelText: KTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit)),
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwInputFields,
                    ),

                    // Email
                    TextFormField(
                      controller: controller.email,
                      validator: (value) => KValidator.validateEmptyText('Email', value),
                      // validator: (value) => KValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: KTexts.email,
                          prefixIcon: Icon(Iconsax.direct)),
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwInputFields,
                    ),

                    // Phone Number
                    TextFormField(
                      controller: controller.phoneNumber,
                      validator: (value) => KValidator.validateEmptyText('Phone Number', value),
                      // validator: (value) => KValidator.validatePhoneNumber(value),
                      decoration: InputDecoration(
                          labelText: KTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call)),
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwInputFields,
                    ),

                    // Password
                    TextFormField(
                      controller: controller.password,
                      validator: (value) => KValidator.validateEmptyText('Password', value),
                      // validator: (value) => KValidator.validatePassword(value),
                      decoration: InputDecoration(
                        labelText: KTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwInputFields,
                    ),

                    // Terms & Condition Checker
                    Row(
                      children: [
                        SizedBox(
                            width: 24,
                            height: 24,
                            child:
                            Checkbox(value: true, onChanged: (value) {})),
                        SizedBox(
                          width: KSizes.spaceBtwItems,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: '${KTexts.iAgreeTo} ',
                              style: Theme.of(context).textTheme.bodySmall
                          ),

                          TextSpan(
                            text: '${KTexts.privacyPolicy} ',
                            style: Theme.of(context).textTheme.bodyMedium!.apply(
                                color: dark ? KColors.white : KColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? KColors.white : KColors.primary),
                          ),

                          TextSpan(
                              text: ' ${KTexts.and}',
                              style: Theme.of(context).textTheme.bodySmall
                          ),

                          TextSpan(
                            text: ' ${KTexts.termsofUse} ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .apply(
                                color: dark ? KColors.white : KColors.primary,
                                decoration: TextDecoration.underline,
                                decorationColor: dark ? KColors.white : KColors.primary),
                          ),
                        ]))
                      ],
                    ),

                    SizedBox(
                      height: KSizes.spaceBtwSections,
                    ),

                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        // onPressed: controller.signup,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Text(KTexts.createAccount),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              // Divider
              KFormDivider(dividerText: KTexts.orSignUpWith.capitalize!),
              SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              // Social Buttons
              KSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}