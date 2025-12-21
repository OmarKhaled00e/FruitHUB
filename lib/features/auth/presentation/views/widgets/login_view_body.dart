import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/dont_have_an_account_widget.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(24),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            Gap(16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xffC9CECF)),
            ),
            Gap(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            Gap(33),
            CustomButtton(onPressed: () {}, text: 'تسجيل دخول'),
            Gap(33),
            DontHaveAnAccountWidget(),
            Gap(33),
            OrDivider(),
            Gap(31),
            SocialLogainButton(
              image: Assets.imageGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
              onParessed: () {},
            ),
            Gap(16),
            SocialLogainButton(
              image: Assets.imageApplIcon,
              title: 'تسجيل بواسطة أبل',
              onParessed: () {},
            ),
            Gap(16),
            SocialLogainButton(
              image: Assets.imageFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
              onParessed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
