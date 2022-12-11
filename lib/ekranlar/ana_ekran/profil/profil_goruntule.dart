import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/giris_ekrani/giris_ekrani.dart';
import 'package:hastatakip/ekranlar/kayit_ol_ekrani/firebase_auth_kontroller.dart';

import 'kullaici_bilgileri/kullanici_bilgileri_goruntule.dart';

class ProfilGoruntule extends StatefulWidget {
  const ProfilGoruntule({Key? key}) : super(key: key);

  @override
  State<ProfilGoruntule> createState() => _ProfilGoruntuleState();
}

class _ProfilGoruntuleState extends State<ProfilGoruntule> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Get.to(KullaniciBilgileriGoruntule());
          },
          title: Text("Kullanıcı bilgileri"),
          leading: Icon(
            Icons.person,
            color: Colors.green,
          ),
        ),
        ListTile(
          onTap: () {
            FirebaseAuthKontroller().logOut();
            Get.offAll(GirisEkrani());
          },
          title: Text(
            "Çıkış Yap",
          ),
          leading: Icon(
            Icons.logout,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
