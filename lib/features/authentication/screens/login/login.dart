import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child:  Column(
          children: [
            /// Logo, Title and Sub-Title
            TLoginHeader(),

            /// Form
            TLoginForm(),

            /// Divider
            TFormDivider(dividerText: TTexts.orSignInWith),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Footer
            TSocialButtons(),
          ],
        ),
      ),
    );
  }
}
