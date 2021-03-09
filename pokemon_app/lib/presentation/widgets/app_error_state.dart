import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';

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
      padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(ScreenUtil.defaultSize.height * 0.3)),
      child: Icon(
        AppIcons.error,
        size: 180,
        color: AppColors.red,
      ),
    );
  }

  Widget _buildErrorMessage(String errorMessage) {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(20)),
      child: Text(
        errorMessage,
        style: AppTextStyles.regularStyle(),
      ),
    );
  }
}
