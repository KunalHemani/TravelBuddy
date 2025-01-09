import 'package:flutter/material.dart';
import 'package:mcaflex/screens/login.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  // final String image, title, subTitle;
  // final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage("assets/others/googlenew.png"),
                height: 150,
                // width: KHelperfunction.screenWidth() * 0.6,
              ),
              // ),

              SizedBox(
                height: KSizes.spaceBtwSections,
              ),


              // Title & SubTitle
              Text(
                KTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              Text(
                KTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  // onPressed: () => Get.to(() => const LoginScreen()),
                  child: Text(KTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










// import 'package:flutter/material.dart';
// import 'package:mcaflex/screens/login.dart';
// import 'package:mcaflex/utils/constants/sizes.dart';
// import 'package:mcaflex/utils/constants/text_strings.dart';
// import 'package:mcaflex/utils/helper_functions.dart';
// import 'package:mcaflex/utils/styles/spacing_styles.dart';
//
// class SuccessScreen extends StatelessWidget {
//   const SuccessScreen({super.key});
//
//   // final String image, title, subTitle;
//   // final VoidCallback onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: KSpacingStyle.paddingWithAppBarHeight * 2,
//           child: Column(
//             children: [
//               Image(
//                 image: AssetImage("assets/others/googlenew.png"),
//                 height: 150,
//                 width: KHelperfunction.screenWidth() * 0.6,
//               ),
//               // ),
//
//               SizedBox(
//                 height: KSizes.spaceBtwSections,
//               ),
//
//
//               // Title & SubTitle
//               Text(
//                 KTexts.yourAccountCreatedTitle,
//                 style: Theme.of(context).textTheme.headlineMedium,
//                 textAlign: TextAlign.center,
//               ),
//
//               SizedBox(
//                 height: KSizes.spaceBtwItems,
//               ),
//
//               Text(
//                 KTexts.yourAccountCreatedSubTitle,
//                 style: Theme.of(context).textTheme.labelMedium,
//                 textAlign: TextAlign.center,
//               ),
//
//               SizedBox(
//                 height: KSizes.spaceBtwItems,
//               ),
//
//               // Buttons
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   // onPressed: onPressed,
//                   child: Text(
//                       KTexts.tContinue
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
