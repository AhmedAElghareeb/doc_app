import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account yet?",
            style: TextStyles.font13darkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13blueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // context.pushReplacementNamed(
                //   Routes.signUpScreen,
                // );
              },
          ),
        ],
      ),
    );
  }
}
