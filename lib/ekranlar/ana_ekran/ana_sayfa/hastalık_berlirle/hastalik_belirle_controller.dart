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
        id: 021111,
        sonuc:
            "Mide bulantınıza iyi gelmesi için az tuzlu kraker yiyebilirsiniz.Rezene çayı da mide bulantınıza iyi gelecektir.Bunun için bir bardak kaynar suya bir çay kaşığı rezene tohumu ekleyin, 10 dakika demledikten sonra süzün ve tüketin.şikatetleriniz 1 gün içinde geçmezse bir sağlık kuruluşuna başvurun."),
    SonucModel(id: 021112, sonuc: "Acil bir sağlık kuruluşuna başvurun."),
    SonucModel(
        id: 02222,
        sonuc:
            "Yediğiniz birşey dokunmuş olabilir.Papatya veya rezene çayı tüketebilirsiniz.Haşlanmış patatesi tuzlayıp yiyebilirsiniz. Limon,nane ve elma gibi ferahlatıcı besinlerde şikayetlerinize iyi gelecektir."),
    SonucModel(
        id: 031111,
        sonuc:
            "Covid-19 olabilirsiniz. Derhal en yakın acil sağlık kuruluşuna gidip test yaptırmalısınız!"),
    SonucModel(
        id: 04111, sonuc: "Derhal en yakın sağlık kuruluşuna başvurunuz."),
    SonucModel(
        id: 042111,
        sonuc: "Bir göğüs hastalıkları uzmanına görünmenizde fayda var."),
    SonucModel(
        id: 042211,
        sonuc: "Bir göğüs hastalıkları uzmanına görünmenizde fayda var."),
    SonucModel(
        id: 05111,
        sonuc:
            "Soğuk algınlığı olabilir.Zencefil, bal, ıhlamur çayı ve bol C vitamini tüketebilirsiniz.Düşmeyen areş olursa derhal bir sağlık kuruluşuna başvurunuz."),
    SonucModel(
        id: 031211,
        sonuc:
            "Grip olabilirsiniz.Bir hekim dahilinde ilaç tedavisine başlamanızı öneririz."),
    SonucModel(
        id: 122,
        sonuc:
            "Migren, stres, yorgunluk ve susuzluk gibi nedenler başın arka kısmında ağrı yapabilir. Bir doktora görünmenizde fayda var."),
    SonucModel(id: 021112, sonuc: "Acil bir sağlık kuruluşuna başvurun."),
    SonucModel(id: 021112, sonuc: "Acil bir sağlık kuruluşuna başvurun."),
    SonucModel(id: 021112, sonuc: "Acil bir sağlık kuruluşuna başvurun."),
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
    if (id == 02) {
      soruModelList.add(
        SoruModel(
          id: 02,
          soru: "Midenizde ağrı oluyor mu?",
          siklar: [
            Secenek(id: 021, secenek: "evet"),
            Secenek(id: 022, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 021) {
      soruModelList.add(
        SoruModel(
          id: 021,
          soru: "Midenizde yanma oluyor mu?",
          siklar: [
            Secenek(id: 0211, secenek: "evet"),
            Secenek(id: 0212, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0211) {
      soruModelList.add(
        SoruModel(
          id: 0211,
          soru: "Kusma yaşadınız mı?",
          siklar: [
            Secenek(id: 02111, secenek: "evet"),
            Secenek(id: 02112, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 02111) {
      soruModelList.add(
        SoruModel(
          id: 02111,
          soru: "Gün içinde kaç kez kusuyorsunuz?",
          siklar: [
            Secenek(id: 021111, secenek: "1-2"),
            Secenek(id: 021112, secenek: "2 ve fazlası"),
          ],
        ),
      );
    } else if (id == 022) {
      soruModelList.add(
        SoruModel(
          id: 022,
          soru: "Midenizde yanma var mı?",
          siklar: [
            Secenek(id: 0221, secenek: "evet"),
            Secenek(id: 0222, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0222) {
      soruModelList.add(
        SoruModel(
          id: 0222,
          soru: "Kusma yaşıyor musunuz?",
          siklar: [
            Secenek(id: 02221, secenek: "evet"),
            Secenek(id: 02222, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0212) {
      soruModelList.add(
        SoruModel(
          id: 0212,
          soru: "Karın ağrınız var mı?",
          siklar: [
            Secenek(id: 02121, secenek: "evet"),
            Secenek(id: 02122, secenek: "hayır"),
          ],
        ),
      );
    } //---------------------------------------------------------
    if (id == 03) {
      soruModelList.add(
        SoruModel(
          id: 03,
          soru: "Boğaz ağrınız var mı?",
          siklar: [
            Secenek(id: 031, secenek: "evet"),
            Secenek(id: 032, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 031) {
      soruModelList.add(
        SoruModel(
          id: 031,
          soru: "Ateşiniz var mı?",
          siklar: [
            Secenek(id: 0311, secenek: "evet"),
            Secenek(id: 0312, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0311) {
      soruModelList.add(
        SoruModel(
          id: 0311,
          soru: "Burun akıntınız var mı?",
          siklar: [
            Secenek(id: 03111, secenek: "evet"),
            Secenek(id: 03121, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 03111) {
      soruModelList.add(
        SoruModel(
          id: 03111,
          soru: "Baş ağrınız var mı?",
          siklar: [
            Secenek(id: 031111, secenek: "evet"),
            Secenek(id: 031211, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 032) {
      soruModelList.add(
        SoruModel(
          id: 032,
          soru: "Halsizlik hissediyor musunuz?",
          siklar: [
            Secenek(id: 0321, secenek: "evet"),
            Secenek(id: 0322, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0322) {
      soruModelList.add(
        SoruModel(
          id: 0322,
          soru: "Ateşiniz var mı?",
          siklar: [
            Secenek(id: 03211, secenek: "evet"),
            Secenek(id: 03222, secenek: "hayır"),
          ],
        ),
      );
    } //-------------------------------------------------------------
    if (id == 04) {
      soruModelList.add(
        SoruModel(
          id: 04,
          soru: "Baş ağrınız var mı?",
          siklar: [
            Secenek(id: 041, secenek: "evet"),
            Secenek(id: 042, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 041) {
      soruModelList.add(
        SoruModel(
          id: 041,
          soru: "Baş dönmesi yaşıyor musunuz?",
          siklar: [
            Secenek(id: 0411, secenek: "evet"),
            Secenek(id: 0412, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0411) {
      soruModelList.add(
        SoruModel(
          id: 0411,
          soru: "Öksürüğünüz var mı?",
          siklar: [
            Secenek(id: 04111, secenek: "evet"),
            Secenek(id: 04121, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 042) {
      soruModelList.add(
        SoruModel(
          id: 042,
          soru: "Boğaz ağrınız var mı?",
          siklar: [
            Secenek(id: 0421, secenek: "evet"),
            Secenek(id: 0422, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0421) {
      soruModelList.add(
        SoruModel(
          id: 0421,
          soru: "Balgam atıyor musunuz?",
          siklar: [
            Secenek(id: 04211, secenek: "evet"),
            Secenek(id: 04221, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 04211) {
      soruModelList.add(
        SoruModel(
          id: 04211,
          soru: "Nefes almakta güçlük çekiyor musunuz?",
          siklar: [
            Secenek(id: 042111, secenek: "evet"),
            Secenek(id: 042211, secenek: "hayır"),
          ],
        ),
      );
    } //-----------------------------------------------------------------
    if (id == 05) {
      soruModelList.add(
        SoruModel(
          id: 05,
          soru: "Öksürüğünüz var mı?",
          siklar: [
            Secenek(id: 051, secenek: "evet"),
            Secenek(id: 052, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 051) {
      soruModelList.add(
        SoruModel(
          id: 051,
          soru: "Burun akıntısı var mı?",
          siklar: [
            Secenek(id: 0511, secenek: "evet"),
            Secenek(id: 0512, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0511) {
      soruModelList.add(
        SoruModel(
          id: 0511,
          soru: "Balgam atıyor musunuz?",
          siklar: [
            Secenek(id: 05111, secenek: "evet"),
            Secenek(id: 05121, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 052) {
      soruModelList.add(
        SoruModel(
          id: 052,
          soru: "Burun akıntısı var mı?",
          siklar: [
            Secenek(id: 0521, secenek: "evet"),
            Secenek(id: 0522, secenek: "hayır"),
          ],
        ),
      );
    } else if (id == 0522) {
      soruModelList.add(
        SoruModel(
          id: 0522,
          soru: "Burun akıntısı var mı?",
          siklar: [
            Secenek(id: 05221, secenek: "evet"),
            Secenek(id: 05222, secenek: "hayır"),
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
