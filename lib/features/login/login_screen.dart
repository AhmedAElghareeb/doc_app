import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/core/widgets/app_text_button.dart';
import 'package:doc_app/features/login/data/models/login_request_body.dart';
import 'package:doc_app/features/login/logic/login_cubit.dart';
import 'package:doc_app/features/login/widgets/already_have_account_text.dart';
import 'package:doc_app/features/login/widgets/email_and_pass.dart';
import 'package:doc_app/features/login/widgets/horizontal_divider.dart';
import 'package:doc_app/features/login/widgets/login_bloc_listener.dart';
import 'package:doc_app/features/login/widgets/social_login.dart';
import 'package:doc_app/features/login/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                Column(
                  children: [
                    const EmailAndPass(),
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
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
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
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginStates(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passController.text,
          ),
        );
  }
}
