import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:tiktok_ui/constants/constants.dart';
import 'package:tiktok_ui/presentation/widgets/widgets.dart';
import 'package:tiktok_ui/utilities/utilities.dart';

class ActionsToolBar extends StatelessWidget {
  // Full dimensions of an action
  static const double ActionWidgetSize = 60.0;

  // The size of the icon showen for Social Actions
  static const double ActionIconSize = 35.0;

  // The size of the share social icon
  static const double ShareIconSize = 25.0;

  // The size of the profile image in the follow Action
  static const double ProfileImageSize = 50.0;

  // The size of the plus icon under the profile image in follow action
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(),
          _getSocialAction(icon: AppIcons.heart, title: '3.2m'),
          _getSocialAction(icon: AppIcons.chatBubble, title: '16.4k'),
          _getSocialAction(
            icon: AppIcons.reply,
            title: AppLocalizations.of(context).translate(AppStrings.share),
            isShare: true,
          ),
          _getMusicPlayerAction(),
        ],
      ),
    );
  }

  Widget _getFollowAction({String pictureUrl}) {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(10),
        bottom: ScreenUtil().setHeight(10),
        left: ScreenUtil().setWidth(4),
      ),
      width: ScreenUtil().setWidth(60),
      height: ScreenUtil().setHeight(60),
      child: Stack(
        children: [
          _getProfilePicture(),
          _getPlusIcon(),
        ],
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
      left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(1),
          horizontal: ScreenUtil().setWidth(1),
        ),
        child: Container(
          height: ProfileImageSize,
          width: ProfileImageSize,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(ProfileImageSize / 2),
          ),
          child: CachedNetworkImage(
            imageUrl:
                'https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7',
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 14,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
        width: PlusIconSize,
        height: PlusIconSize,
        decoration: BoxDecoration(
          color: AppColors.lightPinkRed,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(
          AppIcons.add,
          color: AppColors.white,
          size: 20.0,
        ),
      ),
    );
  }

  Widget _getSocialAction({
    String title,
    IconData icon,
    bool isShare = false,
  }) {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(15),
      ),
      height: ScreenUtil().setHeight(60),
      width: ScreenUtil().setWidth(60),
      child: Column(
        children: [
          Icon(
            icon,
            size: isShare ? ShareIconSize : ActionIconSize,
            color: AppColors.grey300,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: ScreenUtil().setHeight(isShare ? 5 : 2),
            ),
            child: AppTextDisplay(
              text: title,
              textStyle: isShare
                  ? AppTextStyles.shareAction()
                  : AppTextStyles.socialAction(),
            ),
          )
        ],
      ),
    );
  }

  Widget _getMusicPlayerAction() {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(10),
        bottom: ScreenUtil().setHeight(8),
      ),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: ProfileImageSize,
              width: ProfileImageSize,
              decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    'https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7',
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
        ],
      ),
    );
  }

  LinearGradient get musicGradient {
    return LinearGradient(
      colors: [
        AppColors.grey800,
        AppColors.grey900,
        AppColors.grey900,
        AppColors.grey800,
      ],
      stops: [0.0, 0.4, 0.6, 1.0],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
  }
}
