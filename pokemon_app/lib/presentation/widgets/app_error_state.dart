import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';
import '../../presentation/presentation.dart';

class AppErrorState extends StatelessWidget {
  final String errorMessage;

  AppErrorState(this.errorMessage);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [_buildErrorIcon(), _buildErrorMessage(errorMessage)],
      ),
    );
  }

  Widget _buildErrorIcon() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().screenHeight * 0.3),
      child: Icon(
        AppIcons.error,
        size: 160,
        color: AppColors.red,
      ),
    );
  }

  Widget _buildErrorMessage(String errorMessage) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil().setHeight(20),
        left: ScreenUtil().setWidth(26),
        right: ScreenUtil().setWidth(26),
      ),
      child: AppTextDisplay(
        translation: errorMessage,
        textStyle: AppTextStyles.stateMessage(),
        maxLines: 2,
      ),
    );
  }
}
