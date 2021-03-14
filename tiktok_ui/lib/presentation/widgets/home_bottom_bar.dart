import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:tiktok_ui/constants/constants.dart';
import 'package:tiktok_ui/presentation/presentation.dart';

class HomeBottomBar extends StatefulWidget {
  static const double NavigationIconSize = 25.0;
  static const double CreateButtonWidth = 40.0;

  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  bool homeSelected = true;
  bool searchSelected = false;
  bool messagesSelected = false;
  bool profileSelected = false;

  Widget normalTab({IconData icon, Function onTap, bool flag}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.white,
            size: HomeBottomBar.NavigationIconSize,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(8),
          ),
          Container(
            height: ScreenUtil().setHeight(1),
            width: ScreenUtil().setWidth(HomeBottomBar.NavigationIconSize + 7),
            color: flag ? AppColors.white : Colors.transparent,
          ),
        ],
      ),
    );
  }

  Widget get customCreateIcon {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ScreenUtil().setWidth(40),
        height: ScreenUtil().setHeight(27),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: ScreenUtil().setWidth(10),
              ),
              width: HomeBottomBar.CreateButtonWidth,
              decoration: BoxDecoration(
                color: AppColors.lightPinkRed,
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: ScreenUtil().setWidth(10),
              ),
              width: HomeBottomBar.CreateButtonWidth,
              decoration: BoxDecoration(
                color: AppColors.lightCyan,
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            Center(
              child: Container(
                height: double.infinity,
                width: HomeBottomBar.CreateButtonWidth,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: Icon(
                  AppIcons.add,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(12),
          ),
          child: Container(
            height: ScreenUtil().setHeight(1),
            width: ScreenUtil().screenWidth,
            color: Colors.white12,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            normalTab(
              icon: AppIcons.home,
              onTap: () {
                setState(() {
                  homeSelected = true;
                  searchSelected = false;
                  messagesSelected = false;
                  profileSelected = false;
                });
              },
              flag: homeSelected,
            ),
            normalTab(
              icon: AppIcons.search,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  searchSelected = true;
                  messagesSelected = false;
                  profileSelected = false;
                });
              },
              flag: searchSelected,
            ),
            customCreateIcon,
            normalTab(
              icon: AppIcons.messages,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  searchSelected = false;
                  messagesSelected = true;
                  profileSelected = false;
                });
              },
              flag: messagesSelected,
            ),
            normalTab(
              icon: AppIcons.profile,
              onTap: () {
                setState(() {
                  homeSelected = false;
                  searchSelected = false;
                  messagesSelected = false;
                  profileSelected = true;
                });
              },
              flag: profileSelected,
            ),
          ],
        ),
      ],
    );
  }
}
