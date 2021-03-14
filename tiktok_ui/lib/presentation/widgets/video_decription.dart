import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiktok_ui/presentation/presentation.dart';
import 'package:tiktok_ui/constants/constants.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(20),
        ),
        child: Container(
          height: ScreenUtil().setHeight(70),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextDisplay(
                text: '@firstjonny',
                textStyle: AppTextStyles.userId(),
                textAlign: TextAlign.start,
              ),
              AppTextDisplay(
                translation: AppStrings.videoDetails,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: ScreenUtil().setWidth(4),
                    ),
                    child: Icon(
                      Icons.music_note,
                      size: 15.0,
                      color: AppColors.white,
                    ),
                  ),
                  AppTextDisplay(
                    translation: AppStrings.artistAlbumSongDetails,
                    textStyle: AppTextStyles.artistDetails(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
