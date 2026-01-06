import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        padding: EdgeInsets.all(8),
        decoration: ShapeDecoration(color: Color(0xffEEF8ED), shape: OvalBorder()),
        child: SvgPicture.asset(Assets.imageNotification),
      ),
      leading: Image.asset(Assets.imageProfileImage),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(color: Color(0xff949D9E)),
      ),
      subtitle: Text('أحمد مصطفي',textAlign: TextAlign.right,style: TextStyles.bold16),
    );
  }
}
