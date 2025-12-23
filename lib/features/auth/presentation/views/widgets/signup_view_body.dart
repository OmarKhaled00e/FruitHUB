import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/helper_functions/build_snack_bar.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/widgets/password_field.dart';
import 'package:fruit_hub/features/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:gap/gap.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, userName, password;
  late bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              Gap(24),
              CustomTextFormField(
                onSaved: (value) {
                  userName = value!;
                },
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
              ),
              Gap(16),
              CustomTextFormField(
                onSaved: (value) {
                  email = value!;
                },
                hintText: 'البريد الإلكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              Gap(16),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              Gap(16),
              TermsAndConditionsWidget(
                onChanged: (value) {
                  isTermsAccepted = value;
                },
              ),
              Gap(30),
              CustomButtton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    if (isTermsAccepted) {
                      context.read<SignupCubit>().createUserWithEmailAndPassord(
                        email,
                        password,
                        userName,
                      );
                    } else {
                      buildSnackBar(
                        context,
                        'يجب عليك الموافقة علي الشروط والإحكام',
                      );
                    }
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: 'إنشاء حساب جديد',
              ),
              Gap(30),
              HaveAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
