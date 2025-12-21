import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:gap/gap.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          children: [
            Gap(24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            Gap(16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            Gap(16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            Gap(16),
            TermsAndConditionsWidget(),
            Gap(30),
            CustomButtton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            Gap(30),
            HaveAnAccountWidget(),
          ],
        ),
      ),
    );
  }
}
