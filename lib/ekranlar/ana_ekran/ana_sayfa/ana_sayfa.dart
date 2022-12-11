import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hastatakip/ekranlar/ana_ekran/ana_sayfa/hastal%C4%B1k_berlirle/hastal%C4%B1k_belirle.dart';
import 'package:hastatakip/ekranlar/yard%C4%B1mcilar/navigator_yardimcisi.dart';
import 'package:lottie/lottie.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    // children içindeki widgetleri alt alta koyar
    return SingleChildScrollView(
      child: Column(
        children: [
          LottieBuilder.asset(
            "lib/assets/welcome.json",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                  text:
                      "Hoşgeldiniz! uygulamamız sizlerin sağlığı için hizmet vermeye hazır.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: " Sağlık Yanımda ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text:
                          "ile basit rahatsızlıklarınızda hastaneye başvurmadan iyileşmek mümkün. ",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                NavigatorYardimcisi().push(
                  context,
                  HastalikBelirle(),
                );
              },
              child: Text(
                "Şikayetiniz Nedir?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
