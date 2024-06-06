import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our',
            style: TextStyles.font13greyRegular
                .copyWith(color: const Color(0xff9E9E9E)),
          ),
          TextSpan(
            text: ' Terms & Conditions',
            style: TextStyles.font13darkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13greyRegular.copyWith(
              height: 1.9,
              color: const Color(0xff9E9E9E),
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font13darkBlueMedium,
          ),
        ],
      ),
    );
  }
}
