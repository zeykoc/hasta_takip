import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/ana_ekran/ana_sayfa/ana_sayfa.dart';
import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_g%C3%B6r%C3%BCn%C3%BCm.dart';

class AnaEkranGoruntule extends StatefulWidget {
  const AnaEkranGoruntule({Key? key}) : super(key: key);

  @override
  State<AnaEkranGoruntule> createState() => _AnaEkranGoruntuleState();
}

class _AnaEkranGoruntuleState extends State<AnaEkranGoruntule> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana ekran"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: IndexedStack(
              index: currentIndex,
              children: [
                AnaSayfa(),
                HastaliklarGorunum(),
                Container(
                  child: Center(
                    child: Text("profil"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  // kutunun üstüne gölge vermemizi sağlar
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, -3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomListTile(
                    index: 0,
                    onPressed: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                    text: "Ana sayfa",
                    icon: Icons.home,
                  ),
                  _bottomListTile(
                    index: 1,
                    onPressed: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                    text: "Hastalıklar",
                    icon: Icons.sick,
                  ),
                  _bottomListTile(
                    index: 2,
                    onPressed: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                    text: "Profil",
                    icon: Icons.person,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomListTile({
    required int index,
    required void Function()? onPressed,
    required String text,
    required IconData icon,
  }) =>
      //bulunduğu alanı kaplar
      Expanded(
        child: AnimatedPadding(
          duration: Duration(milliseconds: 100),
          padding: EdgeInsets.only(
            left: 8,
            right: 8,
            //aktif olan iconu alltan 8 brim kaldır
            bottom: index == currentIndex ? 8 : 0,
          ),
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: index == currentIndex ? Colors.blue : null,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: index == currentIndex ? Colors.blue : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
