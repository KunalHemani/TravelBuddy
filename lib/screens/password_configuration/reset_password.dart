import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcaflex/screens/login.dart';
import 'package:mcaflex/utils/constants/image_strings.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              // onPressed: () {
              //   Navigator.pop(context,
              //       MaterialPageRoute(builder: (context) => LoginScreen()));
              // },
            onPressed: () => Get.back, // check on real phone, either it's working or not
              icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              // Image with 60% of screen width
              Image(
                  image: AssetImage(KImages.google),
                  // width: KHelperfunction.screenWidth() * 0.6,
              ),

              SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              // Title & SubTitle
              Text(
                KTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              Text(
                KTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              //  Buttons
              SizedBox(
                width: double.infinity,
                child:
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(KTexts.done),
                  ),
              ),
              SizedBox(
                height: KSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(KTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
