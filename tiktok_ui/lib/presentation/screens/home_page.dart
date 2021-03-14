import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_ui/constants/constants.dart';
import 'package:tiktok_ui/presentation/presentation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            HomeTopSection(),
            HomeMiddleSection(),
            HomeBottomBar(),
          ],
        ),
      ),
    );
  }
}
