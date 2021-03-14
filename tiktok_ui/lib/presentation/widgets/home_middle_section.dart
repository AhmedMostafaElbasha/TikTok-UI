import 'package:flutter/material.dart';
import 'package:tiktok_ui/presentation/widgets/widgets.dart';

class HomeMiddleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          VideoDescription(),
          ActionsToolBar(),
        ],
      ),
    );
  }
}
