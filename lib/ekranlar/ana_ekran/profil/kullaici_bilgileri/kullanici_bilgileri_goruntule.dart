import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/ana_ekran/profil/kullaici_bilgileri/kullanici_bilgileri_controller.dart';
import 'package:hastatakip/yard%C4%B1mc%C4%B1_widgetler/app_text_input.dart';

import '../../../../yardımcı_widgetler/app_button.dart';

class KullaniciBilgileriGoruntule extends StatefulWidget {
  const KullaniciBilgileriGoruntule({Key? key}) : super(key: key);

  @override
  State<KullaniciBilgileriGoruntule> createState() =>
      _KullaniciBilgileriGoruntuleState();
}

class _KullaniciBilgileriGoruntuleState
    extends State<KullaniciBilgileriGoruntule> {
  KullaniciBilgileriController kullaniciBilgileriController =
      KullaniciBilgileriController();

  @override
  void initState() {
    super.initState();
    kullaniciBilgileriController.dbdenVerileriAl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Kullanıcı bilgieri"),
      ),
      body: SafeArea(
        child: Obx(
          () {
            if (kullaniciBilgileriController.getIsLoading) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.ad,
                        label: "Adınız",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.soyad,
                        label: "Soyadınız",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.eposta,
                        label: "E-posta",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.cinsiyet,
                        label: "Cinsiyet",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.dogumTarihi,
                        label: "Doğum Tarihi",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.kangrubu,
                        label: "Kan grubu",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      AppTextInput(
                        controller: kullaniciBilgileriController.hastalik,
                        label: "Varsa bir hastalığınız",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AppButton(
                        child: Text("Kaydet"),
                        onPressed: () async {
                          await kullaniciBilgileriController
                              .bilgileriGuncelle();
                        },
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
