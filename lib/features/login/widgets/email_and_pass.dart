import 'package:doc_app/core/helpers/app_regex.dart';
import 'package:doc_app/core/helpers/spacing.dart';
import 'package:doc_app/core/widgets/app_text_form_field.dart';
import 'package:doc_app/features/login/logic/login_cubit.dart';
import 'package:doc_app/features/login/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPass extends StatefulWidget {
  const EmailAndPass({super.key});

  @override
  State<EmailAndPass> createState() => _EmailAndPassState();
}

class _EmailAndPassState extends State<EmailAndPass> {
  bool isObscureText = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialChar = false;
  bool hasNumber = false;
  bool hasMiniLength = false;

  late TextEditingController passCtrl;

  @override
  void initState() {
    super.initState();
    passCtrl = context
        .read<LoginCubit>()
        .passController;
    setUpPasswordControllerListener();
  }

  void setUpPasswordControllerListener() {
    passCtrl.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passCtrl.text);
        hasUpperCase = AppRegex.hasUpperCase(passCtrl.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passCtrl.text);
        hasNumber = AppRegex.hasNumber(passCtrl.text);
        hasMiniLength = AppRegex.hasMinLength(passCtrl.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context
          .read<LoginCubit>()
          .formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: "Email",
            validator: (value) {
              if (value == null || value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please enter valid email";
              }
            },
            controller: context
                .read<LoginCubit>()
                .emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: "Password",
            isObscureText: isObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter valid password";
              }
            },
            controller: context
                .read<LoginCubit>()
                .passController,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialChar: hasSpecialChar,
            hasNumber: hasNumber,
            hasMiniLength: hasMiniLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passCtrl.dispose();
  }
}

