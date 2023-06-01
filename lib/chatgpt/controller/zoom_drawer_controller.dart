import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../common/values/app_color.dart';
import '../../../common/values/style/app_text_style.dart';

class MyZoomDrawerController extends GetxController {
  RxString utf8Text = ''.obs;
  final text = ''.obs;

  void updateText(String newText) {
    text.value = newText;
  }

  void copyText(String text) {
    Clipboard.setData(ClipboardData(text: text));
    Get.snackbar(
      'Sao chép thành công',
      'Đoạn văn bản đã được sao chép',
      backgroundColor: AppColors.kButtonColor,
      titleText: Text(
        "Thông báo",
        style: AppTextStyle.semiBoldMediumStyle.copyWith(
          color: AppColors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      messageText: Text(
        "Đoạn văn bản đã được sao chép",
        style: AppTextStyle.semiBoldMediumStyle.copyWith(
          color: AppColors.white,
          fontSize: 15.sp,
        ),
      ),
    );
  }
}
