import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarGoster {
  void snackBarGosterBasarili(String text) {
    Get.snackbar(
      "Başarılı",
      text,
      colorText: Colors.white,
      backgroundColor: Colors.green,
    );
  }

  void snackBarGosterHatali(String text) {
    Get.snackbar(
      "Başarısız",
      text,
      colorText: Colors.white,
      backgroundColor: Colors.red,
    );
  }
}
