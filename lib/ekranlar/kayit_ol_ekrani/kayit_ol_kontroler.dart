import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:hastatakip/ekranlar/kayit_ol_ekrani/firebase_auth_kontroller.dart';
import 'package:hastatakip/ekranlar/model/kullanici_bilgileri_model.dart';
import 'package:hastatakip/ekranlar/yard%C4%B1mcilar/snackbar_goster.dart';
import 'package:hastatakip/firebase_istekleri/kullanici_bilgileri.dart';

class KayitOlKontroller extends GetxController {
  TextEditingController adController = TextEditingController();
  TextEditingController soyadController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  TextEditingController epostaController = TextEditingController();

  Future<void> kayitOl() async {
    FirebaseAuthKontroller authKontroller = FirebaseAuthKontroller();
    bool isBasarili = await authKontroller.kayitOl(
      email: epostaController.text,
      password: sifreController.text,
    );
    if (isBasarili) {
      SnackBarGoster().snackBarGosterBasarili(
          "Kaydınız Başarıyla Oluştu Giriş Yapabilirsin");
      await kullaniciyiDbyeYaz();
    } else {
      SnackBarGoster().snackBarGosterHatali("Bir Hata Var");
    }
  }

  Future<void> kullaniciyiDbyeYaz() async {
    await KullaniciBilgileriSorgulari().verileriDbyeKaydet(modelOlustur());
  }

  KullaniciModelleri modelOlustur() => KullaniciModelleri(
        adi: adController.text,
        soyadi: soyadController.text,
        eposta: epostaController.text,
      );
}
