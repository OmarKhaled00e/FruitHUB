import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:gap/gap.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0xffDCDEDE))),
        Gap(18),
        Text('أو', style: TextStyles.semiBold16),
        Gap(18),
        Expanded(child: Divider(color: Color(0xffDCDEDE))),
      ],
    );
  }
}
