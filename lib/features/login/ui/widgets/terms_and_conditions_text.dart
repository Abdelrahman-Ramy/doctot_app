import 'package:doctot_app/core/theming/styles.dart';
import 'package:flutter/material.dart';


class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13GreyRegular,
          ),
          TextSpan(
            text: ' Terms & Conditions\n',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
