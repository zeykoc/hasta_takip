import 'package:flutter/material.dart';
import 'package:hastatakip/ekranlar/kayit_ol_ekrani/firebase_auth_kontroller.dart';
import 'package:hastatakip/ekranlar/yard%C4%B1mcilar/snackbar_goster.dart';

class GirisEkraniController {
  TextEditingController sifreController = TextEditingController();
  TextEditingController epostaController = TextEditingController();

  Future<bool> girisYap() async {
    try {
      FirebaseAuthKontroller authKontroller = FirebaseAuthKontroller();
      bool isBasarili = await authKontroller.girisYap(
        email: epostaController.text,
        password: sifreController.text,
      );
      if (isBasarili) {
        SnackBarGoster().snackBarGosterBasarili("Giriş Başarılı");
        return true;
      } else {
        SnackBarGoster().snackBarGosterHatali("bir hata oluştu");
        return false;
      }
    } catch (e) {
      print(e.toString());
      SnackBarGoster().snackBarGosterHatali("bir hata oluştu");
      return false;
    }
  }
}
