import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcaflex/screens/password_configuration/reset_password.dart';
import 'package:mcaflex/utils/constants/sizes.dart';
import 'package:mcaflex/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: EdgeInsets.all(KSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(KTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: KSizes.spaceBtwItems,),
            Text(KTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: KSizes.spaceBtwSections * 2,),
            
            // Text Field
            TextFormField(
              decoration: InputDecoration(
                labelText: KTexts.email,
                prefixIcon: Icon(Icons.email),
              ),
            ),

            SizedBox(height: KSizes.spaceBtwSections),
            
            // Submit Button
            SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResetPassword()));
              },
              child: Text(
                KTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
