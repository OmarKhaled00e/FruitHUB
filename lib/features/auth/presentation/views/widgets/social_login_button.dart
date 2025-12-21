import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:svg_flutter/svg.dart';

class SocialLogainButton extends StatelessWidget {
  const SocialLogainButton({
    super.key,
    required this.image,
    required this.title,
    required this.onParessed,
  });
  final String image;
  final String title;
  final VoidCallback onParessed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFDCDEDE), width: 1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onParessed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.semiBold16,
          ),
        ),
      ),
    );
  }
}
