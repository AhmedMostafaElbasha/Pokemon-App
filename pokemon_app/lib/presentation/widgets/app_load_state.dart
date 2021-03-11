import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class AppLoadState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCircularProgressIndicator(),
          _buildPleaseWaitStatement(),
        ],
      ),
    );
  }

  Widget _buildCircularProgressIndicator() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().screenHeight * 0.4),
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildPleaseWaitStatement() {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(26),
        left: ScreenUtil().setWidth(26),
        right: ScreenUtil().setWidth(26),
      ),
      child: AppTextDisplay(
        translation: AppStrings.loadingStateMessage,
        textStyle: AppTextStyles.stateMessage(),
        maxLines: 2,
      ),
    );
  }
}
