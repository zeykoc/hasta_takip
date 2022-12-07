import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/model/secenek_model.dart';
import 'package:hastatakip/ekranlar/model/sonuc_model.dart';
import 'package:hastatakip/ekranlar/model/soru_model.dart';

class HastalikBelirleController extends GetxController {
  List<SoruModel> soruModelList = [];
  List<SonucModel> sonucModelList = [
    SonucModel(
        id: 1211,
        sonuc:
            "Yüksek ihtimalle yüksek tansiyon hastası olabilirsiniz.Bir sağlık kuruluşuna başvurunuz. "),
    SonucModel(id: 1212, sonuc: "Bir sağlık kuruluşuna başvurunuz."),
    SonucModel(id: 11111, sonuc: "sonuç az sonucu"),
    SonucModel(id: 11112, sonuc: "sonuç çok sonucu"),
    SonucModel(
        id: 21111,
        sonuc:
            "1 gün içinde şikayetleriniz geçmezse bir acil sağlık kuruluşuna başvurunuz."),
    SonucModel(id: 21112, sonuc: "acil bir sağlık kuruluşuna başvurunuz"),
    SonucModel(
        id: 2112,
        sonuc:
            "Midenize iyi gelebilecek bir bitki çayı içebeilirsiniz. Rezene veya paptya çayı tüketmenizde fayda var.Dilerseniz içine bir tatlı kaşığı bal katabilirsiniz."),
    SonucModel(
        id: 222,
        sonuc:
            "yediğiniz bir şey dokunmuş olabilir. Papatya çayı veya rezene çayı tüketebilirsiniz. Haşlanmış patatesi tuzlayıp yiyebilirsiniz. Limon, nane ve elma gibi ferahlatıcı besinler tüketebilirsiniz."),
    SonucModel(
        id: 312,
        sonuc:
            "Grip olabilirisiniz. Tavuk çorbası, paça çorbası, portakal, greyfurt, mandalina, limonlu çay, kuşburnu gibi besinler grip hastalığına faydalı besinlerdir."),
    SonucModel(
        id: 3112,
        sonuc:
            "Soğuk algınlığı yaşıyor olabilirsiniz. Ateşinizi düşürmek için temiz bir bezi sirkeli suyla ıslatıp koltuk altınıza ve alnınıza koyunuz."),
    SonucModel(
        id: 31112,
        sonuc:
            "Grip olabilirisiniz. Tavuk çorbası, paça çorbası, portakal, greyfurt, mandalina, limonlu çay, kuşburnu gibi besinler grip hastalığına faydalı besinlerdir."),
    SonucModel(
        id: 31111,
        sonuc:
            "Covid olabilirsiniz. En yakın sağlık kuruluşuna gidip test yaptırmanızı öneririz.."),
    SonucModel(id: 411, sonuc: "Derhal bir sağlık kuruluşuna başvurunuz."),
    SonucModel(
        id: 4121,
        sonuc:
            "Covid olabilirsiniz. En yakın sağlık kuruluşuna gidip covid testi yaptırmanızı öneririz."),
    SonucModel(
        id: 4122,
        sonuc:
            "Sinüzit olabilirsiniz. Bol sıvı tüketerek mukus tabakasının incelmesini sağlayın. Bulunduğunuz ortam nemsiz ve havasız olmasın. Uygun şartlarda nemlendirin. Sigara kullanmayın. Sıcak su ile tuzu karıştırın. Ilık kıvama getirip burnunuza sıkın. Baharatlı yiyecekler sinüzitinize iyi gelecelektir."),
    SonucModel(
        id: 4211,
        sonuc:
            "Nezle olabilirsiniz. Boğazınızı rahatlatmak için pastil kullanabilirsiniz. Balgam atmak için eczanelerden balgam söktürücü ilaçlar almanızı tavsiye ederiz."),
    SonucModel(
        id: 42121,
        sonuc: "Bir göğüs hastalıkları uzmanına görünmenizde fayda var."),
    SonucModel(
        id: 422,
        sonuc:
            "Grip başlangıcı olabilir. Bol sıvı almalı ve yatak istirahati yapmalısınız. Bolca taze meyve ve sebze tüketmelisiniz. Ellerinizi sık sık yıkamalısınız."),
    SonucModel(
        id: 5111,
        sonuc:
            "oluşan balgamınız için iltihap önleyici ve balgam söktürücü özelliği bulunan meyan kökü bitkisini tüketebilirsiniz."),
    SonucModel(
        id: 5112,
        sonuc:
            "soğuk algınlığı olabilir. Zencefil-bal, ıhlamur çayı ve bol C vitamini tüketebilirsiniz. Düşmeyen ateş olursa derhal bir sağlık kuruluşuna başvurunuz"),
    SonucModel(id: 512, sonuc: "Bir sağlık kuruluşuna görünmenizde fayda var"),
    SonucModel(
        id: 522,
        sonuc:
            "covid olabilirsiniz. En yakın sağlık kuruluşuna gidip test yaptırmanızı öneririrz."),
  ];

  SonucModel idYeGoreSonucModel(int id) {
    int index = sonucModelList.indexWhere((element) => id == element.id);

    return sonucModelList[index];
  }

  // sonucların içerisinde idleri sorgulatır
  bool idvarmi(int id) {
    bool donecek = false;
    sonucModelList.forEach((element) {
      if (element.id == id) {
        donecek = true;
      }
    });
    return donecek;
  }

  RxInt _currentIndex = 0.obs;
  int get getCurrentIndex => _currentIndex.value;
  setCurrentIndex(int value) => _currentIndex.value = value;
  void soruyusil(int id) {
    soruModelList.removeWhere((element) => element.id == id);
  }

  void soruekle(int id) {
    if (id == 1) {
      soruModelList.add(
        SoruModel(
          id: 1,
          soru: "Baş ağrınızı hisettiğiniz kısım?",
          siklar: [
            Secenek(id: 11, secenek: "ön"),
            Secenek(id: 12, secenek: "arka"),
          ],
        ),
      );
    } else if (id == 11) {
      soruModelList.add(
        SoruModel(
          id: 11,
          soru: "Burun akıntısı var mı ",
          siklar: [
            Secenek(id: 111, secenek: "evet"),
            Secenek(id: 12, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 111) {
      soruModelList.add(
        SoruModel(
          id: 111,
          soru: "yüzünüzün alın kısmında bir ağrı var mı ",
          siklar: [
            Secenek(id: 1111, secenek: "evet"),
            Secenek(id: 121, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 1111) {
      soruModelList.add(
        SoruModel(
          id: 1111,
          soru: "ağrı şiddetiniz nedir",
          siklar: [
            Secenek(id: 11111, secenek: "az"),
            Secenek(id: 11112, secenek: "çok"),
          ],
        ),
      );
    } else if (id == 12) {
      soruModelList.add(
        SoruModel(
          id: 12,
          soru: "Alın bölgenizde ağrı var mı ",
          siklar: [
            Secenek(id: 121, secenek: "evet"),
            Secenek(id: 122, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 121) {
      soruModelList.add(
        SoruModel(
          id: 121,
          soru: "sık sık idrara çıkıyor musunuz",
          siklar: [
            Secenek(id: 1211, secenek: "evet"),
            Secenek(id: 1212, secenek: "hayır"),
          ],
        ),
      );
    }
    //---------------------------------------------------------
    else if (id == 2) {
      soruModelList.add(
        SoruModel(
          id: 2,
          soru: "Midenizde Ağrı Var mı?",
          siklar: [
            Secenek(id: 21, secenek: "Evet"),
            Secenek(id: 22, secenek: "Hayır"),
          ],
        ),
      );
    } else if (id == 21) {
      soruModelList.add(
        SoruModel(
          id: 21,
          soru: "Midenizde yanma var mı ?",
          siklar: [
            Secenek(id: 211, secenek: "Evet"),
            Secenek(id: 22, secenek: "Hayır"),
          ],
        ),
      );
    } else if (id == 211) {
      soruModelList.add(
        SoruModel(
          id: 211,
          soru: "Kusma yaşadınız mı",
          siklar: [
            Secenek(id: 2111, secenek: "Evet"),
            Secenek(id: 2112, secenek: "Hayır"),
          ],
        ),
      );
    } else if (id == 2111) {
      soruModelList.add(
        SoruModel(
          id: 2111,
          soru: "Günde kaç kez kusuyorsunuz",
          siklar: [
            Secenek(id: 21111, secenek: "1-2 kez "),
            Secenek(id: 21112, secenek: "3 ve fazlası"),
          ],
        ),
      );
    } else if (id == 22) {
      soruModelList.add(
        SoruModel(
          id: 22,
          soru: "Karın ağrısı var mı ?",
          siklar: [
            Secenek(id: 211, secenek: "Evet"),
            Secenek(id: 222, secenek: "Hayır"),
          ],
        ),
      );
    }
    //--------------------------------------------------------
    else if (id == 3) {
      soruModelList.add(
        SoruModel(
          id: 3,
          soru: "Boğaz ağrınız var mı ? ",
          siklar: [
            Secenek(id: 31, secenek: "evet"),
            Secenek(id: 311, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 31) {
      soruModelList.add(
        SoruModel(
          id: 31,
          soru: "Ateşiniz var mı ?",
          siklar: [
            Secenek(id: 311, secenek: "evet"),
            Secenek(id: 312, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 311) {
      soruModelList.add(
        SoruModel(
          id: 311,
          soru: "Burun akıntınız var mı?",
          siklar: [
            Secenek(id: 3111, secenek: "evet"),
            Secenek(id: 3112, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 3111) {
      soruModelList.add(
        SoruModel(
          id: 3111,
          soru: "Baş ağrınız var mı",
          siklar: [
            Secenek(id: 31111, secenek: "evet"),
            Secenek(id: 31112, secenek: "hayır"),
          ],
        ),
      );
    }
    //-------------------------------------------------------------
    else if (id == 4) {
      soruModelList.add(
        SoruModel(
          id: 4,
          soru: "Baş ağrınız var mı",
          siklar: [
            Secenek(id: 41, secenek: "evet"),
            Secenek(id: 42, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 41) {
      soruModelList.add(
        SoruModel(
          id: 41,
          soru: "Baş dönmesi yaşıyor musunuz ?",
          siklar: [
            Secenek(id: 411, secenek: "evet"),
            Secenek(id: 412, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 412) {
      soruModelList.add(
        SoruModel(
          id: 412,
          soru: "Öksürük var mı ?",
          siklar: [
            Secenek(id: 4121, secenek: "evet"),
            Secenek(id: 4122, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 42) {
      soruModelList.add(
        SoruModel(
          id: 42,
          soru: "Boğaz ağrınız var mı ?",
          siklar: [
            Secenek(id: 421, secenek: "evet"),
            Secenek(id: 422, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 421) {
      soruModelList.add(
        SoruModel(
          id: 421,
          soru: "Balgam atıyor musunuz ?",
          siklar: [
            Secenek(id: 4211, secenek: "evet"),
            Secenek(id: 4212, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 4212) {
      soruModelList.add(
        SoruModel(
          id: 4212,
          soru: "Nefes almakta güçlük çekiyor musunuz",
          siklar: [
            Secenek(id: 42121, secenek: "evet"),
            Secenek(id: 422, secenek: "hayır"),
          ],
        ),
      );
    }
    //-------------------------------------------------------------
    else if (id == 5) {
      soruModelList.add(
        SoruModel(
          id: 5,
          soru: "Öksürüğünüz var mı",
          siklar: [
            Secenek(id: 51, secenek: "evet"),
            Secenek(id: 52, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 51) {
      soruModelList.add(
        SoruModel(
          id: 51,
          soru: "Burun akıntısı var mı",
          siklar: [
            Secenek(id: 511, secenek: "evet"),
            Secenek(id: 512, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 511) {
      soruModelList.add(
        SoruModel(
          id: 511,
          soru: "Balgam atıyor musunuz",
          siklar: [
            Secenek(id: 5111, secenek: "evet"),
            Secenek(id: 5112, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 52) {
      soruModelList.add(
        SoruModel(
          id: 52,
          soru: "Nefes darlığınız var mı ",
          siklar: [
            Secenek(id: 522, secenek: "evet"),
            Secenek(id: 51, secenek: "hayır"),
          ],
        ),
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
    soruModelList = [
      SoruModel(
        id: 0,
        soru: "Şikayetiniz nedir ?",
        siklar: [
          Secenek(id: 01, secenek: "Baş ağrısı"),
          Secenek(id: 02, secenek: "Mide bulantısı"),
          Secenek(id: 03, secenek: "Öksürük"),
          Secenek(id: 04, secenek: "Burun akıntısı"),
          Secenek(id: 05, secenek: "Ateş"),
        ],
      ),
    ];
  }
}
