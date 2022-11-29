import 'package:flutter/material.dart';
import 'package:hastatakip/ekranlar/kayit_ol_ekrani/kayit_ol_kontroler.dart';

import '../../yardımcı_widgetler/app_button.dart';
import '../../yardımcı_widgetler/app_text_input.dart';

class KayitOlGoruntule extends StatefulWidget {
  const KayitOlGoruntule({Key? key}) : super(key: key);

  @override
  State<KayitOlGoruntule> createState() => _KayitOlGoruntuleState();
}

class _KayitOlGoruntuleState extends State<KayitOlGoruntule> {
  KayitOlKontroller kayitOlKontroller = KayitOlKontroller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Kayıt Ol",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.3,
              ),
              AppTextInput(
                controller: kayitOlKontroller.adController,
                label: "Ad",
              ),
              SizedBox(
                height: 10,
              ),
              AppTextInput(
                controller: kayitOlKontroller.soyadController,
                label: "Soyad",
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextInput(
                controller: kayitOlKontroller.epostaController,
                label: "E-posta",
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextInput(
                controller: kayitOlKontroller.sifreController,
                label: "Şifre",
              ),
              const SizedBox(
                height: 10,
              ),
              AppButton(
                child: Text("Kayıt ol"),
                onPressed: () async {
                  await kayitOlKontroller.kayitOl();
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
