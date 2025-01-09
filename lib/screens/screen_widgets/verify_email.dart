import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcaflex/screens/login.dart';
import 'package:mcaflex/screens/screen_widgets/success_screen.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';
import 'package:mcaflex/utils/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              // Center(
              //   child:
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
                KTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              Text(
                'Support: mca24_1516ics@met.edu',
                style: Theme.of(context).textTheme.labelLarge,
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
                height: KSizes.spaceBtwItems,
              ),


              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessScreen()));
                },
                    child: Text(KTexts.tContinue),
                ),
              ),

              SizedBox(height: KSizes.spaceBtwItems,),

              SizedBox(width: double.infinity,
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
