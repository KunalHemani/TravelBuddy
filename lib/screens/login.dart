import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcaflex/screens/home_screen.dart';
import 'package:mcaflex/screens/password_configuration/forget_password.dart';
import 'package:mcaflex/screens/signup.dart';
import 'package:mcaflex/utils/constants/colors.dart';
import 'package:mcaflex/utils/constants/image_strings.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';
import 'package:mcaflex/utils/styles/spacing_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMeChecked = false;

  @override
  Widget build(BuildContext context) {
    final dark = KHelperfunction.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // LOGO
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    height: 250,
                    image: AssetImage("assets/others/user.png"),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Welcome",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: KSizes.sm),
                  Text(
                    "Login here",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),

              // Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: KSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            labelText: KTexts.email),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwInputFields,
                      ),

                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.password),
                            labelText: KTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwInputFields / 2,
                      ),

                      // Remember Me & Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Remember Me
                          Row(
                            children: [
                              Checkbox(
                                value: isRememberMeChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isRememberMeChecked = value ?? false;
                                  });
                                },
                              ),
                              const Text(KTexts.rememberMe),
                            ],
                          ),

                          // Forgot Password
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const ForgetPassword()),
                              );
                            },
                            child: const Text(KTexts.forgetPassword),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwSections,
                      ),

                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: isRememberMeChecked
                              ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          }
                              : null, // Disable button if checkbox not checked
                          child: const Text(KTexts.signIn),
                        ),
                      ),
                      const SizedBox(
                        height: KSizes.spaceBtwItems,
                      ),

                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()),
                            );
                          },
                          child: const Text(KTexts.createAccount),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Divider
              Row(
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
              ),
              const SizedBox(height: KSizes.spaceBtwSections),

              // Footer
              Row(
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
                  const SizedBox(width: KSizes.spaceBtwItems),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}










// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:mcaflex/screens/home_screen.dart';
// import 'package:mcaflex/screens/password_configuration/forget_password.dart';
// import 'package:mcaflex/screens/signup.dart';
// import 'package:mcaflex/utils/constants/colors.dart';
// import 'package:mcaflex/utils/constants/image_strings.dart';
// import 'package:mcaflex/utils/constants/sizes.dart';
// import 'package:mcaflex/utils/constants/text_strings.dart';
// import 'package:mcaflex/utils/helper_functions.dart';
// import 'package:mcaflex/utils/styles/spacing_styles.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final dark = KHelperfunction.isDarkMode(context);
//
//
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: KSpacingStyle.paddingWithAppBarHeight,
//           child: Column(
//             children: [
//               // LOGO
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image(
//                     height: 250,
//                     // image: AssetImage(dark ? KImages.lightImgUser : KImages.darkImgUser),
//                     image: AssetImage("assets/others/user.png"),
//                   ),
//
//                   SizedBox(height: 20,),
//
//                   Text(
//                     "Welcome",
//                     style: Theme.of(context).textTheme.headlineLarge,
//                   ),
//
//                   const SizedBox(
//                     height: KSizes.sm,
//                   ),
//
//                   Text(
//                     "Login here",
//                     style: Theme.of(context).textTheme.headlineLarge,
//                   ),
//                 ],
//               ),
//
//               // Form
//               Form(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: KSizes.spaceBtwSections),
//                   child: Column(
//                     children: [
//                       // Email
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.email_outlined),
//                             labelText: KTexts.email),
//                       ),
//                       SizedBox(
//                         height: KSizes.spaceBtwInputFields,
//                       ),
//
//                       TextFormField(
//                         decoration: const InputDecoration(
//                             prefixIcon: Icon(Icons.password),
//                             labelText: KTexts.password,
//                             suffixIcon: Icon(Iconsax.eye_slash)),
//                       ),
//                       SizedBox(
//                         height: KSizes.spaceBtwInputFields / 2,
//                       ),
//
//                       // Remember Me & Forgot Password
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           // Remember Me
//                           Row(
//                             children: [
//                               Checkbox(value: true, onChanged: (value) {}),
//                               Text(KTexts.rememberMe),
//                             ],
//                           ),
//
//                           // Forgot Password
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(context,
//                                   MaterialPageRoute(builder: (context) => ForgetPassword()),
//                               );
//                             },
//                             child: Text(
//                               KTexts.forgetPassword,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: KSizes.spaceBtwSections,
//                       ),
//
//                       // Sign In Button
//                       SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
//                           },
//                           child: Text(KTexts.signIn),
//                         ),
//                       ),
//                       SizedBox(
//                         height: KSizes.spaceBtwItems,
//                       ),
//
//                       SizedBox(
//                         width: double.infinity,
//                         child: OutlinedButton(
//                           onPressed: () {
//                             Navigator.push(context, MaterialPageRoute(
//                                 builder: (context) => SignupScreen())
//                             );
//                           },
//                           child: Text(KTexts.createAccount),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               // Divider
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Flexible(
//                       child: Divider(
//                     color: dark ? KColors.darkGrey : KColors.grey,
//                     thickness: 0.5,
//                     indent: 60,
//                     endIndent: 5,
//                   )),
//                   Text(
//                     KTexts.orSignInWith.capitalize!,
//                     style: Theme.of(context).textTheme.labelMedium,
//                   ),
//                   Flexible(
//                       child: Divider(
//                     color: dark ? KColors.darkGrey : KColors.grey,
//                     thickness: 0.5,
//                     indent: 5,
//                     endIndent: 60,
//                   )),
//                 ],
//               ),
//
//               SizedBox(
//                 height: KSizes.spaceBtwSections,
//               ),
//
//               // Footer
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: KColors.grey),
//                         borderRadius: BorderRadius.circular(100)),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Image(
//                         width: KSizes.iconMd,
//                         height: KSizes.iconMd,
//                         image: AssetImage(KImages.google),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: KSizes.spaceBtwItems,
//                   ),
//                   Container(
//                     decoration: BoxDecoration(
//                         border: Border.all(color: KColors.grey),
//                         borderRadius: BorderRadius.circular(100)),
//                     child: IconButton(
//                       onPressed: () {},
//                       icon: Image(
//                         width: KSizes.iconMd,
//                         height: KSizes.iconMd,
//                         image: AssetImage(KImages.facebook),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
