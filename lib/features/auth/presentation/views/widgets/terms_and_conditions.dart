import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:gap/gap.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTearmSAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTearmSAccepted,
          onChecked: (bool value) {
            isTearmSAccepted = value;
            setState(() {});
          },
        ),
        Gap(16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: ' من خلال إنشاء حساب ، فإنك توافق علي ',
                  style: TextStyles.semiBold13.copyWith(
                    color: Color(0xff949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(text: ' ', style: TextStyles.semiBold13),
                TextSpan(
                  text: 'الخاصة ',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
                TextSpan(text: ' ', style: TextStyles.semiBold13),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
