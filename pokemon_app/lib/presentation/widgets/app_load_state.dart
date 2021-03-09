import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants/constants.dart';

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
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(16)),
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildPleaseWaitStatement() {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(26)),
      child: Text(
        'Pokemons are being loaded. Please wait...',
        style: AppTextStyles.regularStyle(),
      ),
    );
  }
}
