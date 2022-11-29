import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_model.dart';

class HastaliklarController {
  List<HastaliklarModel> hastaliklarList = [];

  void onInit() {
    hastaliklarList = [
      HastaliklarModel(
        name: "askacisi",
        imageUrl:
            "https://www.ege.net/images/haberler/2020/06/maymunlarin-ozellikleri-nelerdir.jpg",
        kisaAciklama: "bir maymuna olan aşk",
      ),
      HastaliklarModel(
        name: "ahzaman",
        imageUrl:
            "https://cunkubaskasenyok.com/wp-content/uploads/2021/10/En-Cok-Tercih-Edilen-Kedi-Cinsleri-.jpg",
        kisaAciklama: "aaman hızlı akıyo",
      ),
      HastaliklarModel(
        name: "dogumgunu",
        imageUrl:
            "https://www.aktifpet.com/image/cache/catalog/blog/kedi/yavru-kedi-hastaliklari-808x511.jpg",
        kisaAciklama: "dogum gunu yaklasıyo",
      ),
    ];
  }
}
