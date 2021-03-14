import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_ui/presentation/presentation.dart';
import 'package:tiktok_ui/constants/constants.dart';

class HomeTopSection extends StatefulWidget {
  @override
  _HomeTopSectionState createState() => _HomeTopSectionState();
}

class _HomeTopSectionState extends State<HomeTopSection> {
  bool followingSelected = false;
  bool forYouSelected = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: ScreenUtil().setHeight(15),
      ),
      child: Container(
        height: ScreenUtil().setHeight(80),
        alignment: Alignment(0.0, 1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  followingSelected = true;
                  forYouSelected = false;
                });
              },
              child: AppTextDisplay(
                translation: AppStrings.followingTab,
                textStyle: followingSelected
                    ? AppTextStyles.selectedTab()
                    : AppTextStyles.regularFont(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(8),
              ),
              child: Container(
                width: ScreenUtil().setWidth(0.5),
                height: ScreenUtil().setHeight(20),
                color: AppColors.white70,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  followingSelected = false;
                  forYouSelected = true;
                });
              },
              child: AppTextDisplay(
                translation: AppStrings.forYouTab,
                textStyle: forYouSelected
                    ? AppTextStyles.selectedTab()
                    : AppTextStyles.regularFont(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
