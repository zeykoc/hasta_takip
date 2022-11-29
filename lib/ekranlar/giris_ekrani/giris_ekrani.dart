import 'package:flutter/material.dart';
import 'package:hastatakip/ekranlar/ana_ekran/ana_ekran_goruntule.dart';
import 'package:hastatakip/ekranlar/giris_ekrani/giris_ekrani_kontroler.dart';
import 'package:hastatakip/ekranlar/yard%C4%B1mcilar/navigator_yardimcisi.dart';
import 'package:hastatakip/yard%C4%B1mc%C4%B1_widgetler/app_button.dart';
import 'package:hastatakip/yard%C4%B1mc%C4%B1_widgetler/app_text_input.dart';

import '../kayit_ol_ekrani/kayit_ol_goruntule.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  GirisEkraniController girisEkraniController = GirisEkraniController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Giriş Ekranı"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextInput(
              controller: girisEkraniController.epostaController,
              label: "Eposta ",
            ),
            SizedBox(
              height: 25,
            ),
            AppTextInput(
              controller: girisEkraniController.sifreController,
              label: "Şifre",
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
                child: Text("Giriş Yap"),
                onPressed: () async {
                  if (await girisEkraniController.girisYap()) {
                    NavigatorYardimcisi()
                        .pushReplacement(context, AnaEkranGoruntule());
                  }
                }),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Şifremi unuttum",
                  style: TextStyle(color: Colors.blue),
                ),
                GestureDetector(
                  onTap: () {
                    NavigatorYardimcisi().push(context, KayitOlGoruntule());
                  },
                  child: Text(
                    "Kayıt ol",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
