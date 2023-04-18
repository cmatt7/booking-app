import 'package:flutter/material.dart';

// Dependecies
import 'package:gap/gap.dart';

// Utils
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_style.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({Key? key, required this.title, required this.icon})
      : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getWidth(12), horizontal: AppLayout.getWidth(12)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFBFC2DF),
          ),
          Gap(AppLayout.getWidth(10)),
          Text(title, style: Styles.textStyle)
        ],
      ),
    );
  }
}
