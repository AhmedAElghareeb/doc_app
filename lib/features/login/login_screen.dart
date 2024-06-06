import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/core/widgets/app_text_button.dart';
import 'package:doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_app/features/login/widgets/dont_have_account.dart';
import 'package:doc_app/features/login/widgets/horizontal_divider.dart';
import 'package:doc_app/features/login/widgets/social_login.dart';
import 'package:doc_app/features/login/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 30.w,
            vertical: 30.h,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24blueBold,
                ),
                verticalSpace(8),
                Text(
                  "We're excited to have you back, can't wait to\nsee what you've been up to since you last\nlogged in.",
                  style: TextStyles.font14greyRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(
                        hintText: "Email",
                      ),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: "Password",
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          "Forget Password?",
                          style: TextStyles.font13blueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        onPressed: () {},
                        buttonText: "Login",
                        textStyle: TextStyles.font16whiteSemiBold,
                      ),
                      verticalSpace(46),
                      const HorizontalDivider(),
                      verticalSpace(32),
                      const SocialMediaLogin(),
                      verticalSpace(32),
                      const TermsAndConditions(),
                      verticalSpace(24),
                      const DontHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
