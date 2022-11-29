import 'package:flutter/cupertino.dart';
import 'package:hastatakip/ekranlar/ana_ekran/ana_sayfa/hastal%C4%B1k_berlirle/hastal%C4%B1k_belirle.dart';
import 'package:hastatakip/ekranlar/yard%C4%B1mcilar/navigator_yardimcisi.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    // children içindeki widgetleri alt alta koyar
    return Column(
      children: [
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
              "Şikayetiniz Nedir",
            ),
          ),
        ),
      ],
    );
  }
}
