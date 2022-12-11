import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/model/kullanici_bilgileri_model.dart';
import 'package:hastatakip/firebase_istekleri/kullanici_bilgileri.dart';

import '../../../yardımcilar/snackbar_goster.dart';

class KullaniciBilgileriController {
  final RxBool _isloading = false.obs;
  bool get getIsLoading => _isloading.value;
  setIsLoading(bool value) => _isloading.value = value;
  KullaniciModelleri kullaniciBilgileri = KullaniciModelleri();

  TextEditingController ad = TextEditingController();
  TextEditingController soyad = TextEditingController();
  TextEditingController eposta = TextEditingController();
  TextEditingController cinsiyet = TextEditingController();
  TextEditingController dogumTarihi = TextEditingController();
  TextEditingController kangrubu = TextEditingController();
  TextEditingController hastalik = TextEditingController();

  Future<void> dbdenVerileriAl() async {
    setIsLoading(true);
    try {
      final response = await KullaniciBilgileriSorgulari().verileriAl();
      if (response.data() != null) {
        kullaniciBilgileri = KullaniciModelleri.fromMap(response.data()!);
        bilgileriEkranaAktar();
      }
    } catch (e) {
      log(e.toString());
    } finally {
      setIsLoading(false);
    }
  }

  Future<void> bilgileriGuncelle() async {
    try {
      await KullaniciBilgileriSorgulari().verileriDbyeKaydet(modelOlustur());

      SnackBarGoster().snackBarGosterBasarili(
          "Bilgileriniz başarıyla kayıt edildi");
    } catch (e) {}
  }

  KullaniciModelleri modelOlustur() => KullaniciModelleri(
        adi: ad.text,
        soyadi: soyad.text,
        dogumTarihi: dogumTarihi.text,
        eposta: eposta.text,
        cinsiyet: cinsiyet.text,
        kanGrubu: kangrubu.text,
        hastalik: hastalik.text,
      );

  void bilgileriEkranaAktar() {
    ad.text = kullaniciBilgileri.adi ?? "";

    soyad.text = kullaniciBilgileri.soyadi ?? "";

    eposta.text = kullaniciBilgileri.eposta ?? "";

    cinsiyet.text = kullaniciBilgileri.cinsiyet ?? "";

    dogumTarihi.text = kullaniciBilgileri.dogumTarihi ?? "";

    kangrubu.text = kullaniciBilgileri.kanGrubu ?? "";

    hastalik.text = kullaniciBilgileri.hastalik ?? "";
  }
}
