import 'dart:math';

class KullaniciModelleri {
  String? adi;
  String? soyadi;
  String? cinsiyet;
  String? dogumTarihi;
  String? kanGrubu;
  String? eposta;
  String? hastalik;

  KullaniciModelleri({
    this.adi,
    this.soyadi,
    this.cinsiyet,
    this.dogumTarihi,
    this.kanGrubu,
    this.eposta,
    this.hastalik,
  });

  Map<String, dynamic> toMap() {
    return {
      "adi": adi,
      "soyadi": soyadi,
      "cinsiyet": cinsiyet,
      "dogumTarihi": dogumTarihi,
      "kanGrubu": kanGrubu,
      "eposta": eposta,
      "hastalik": hastalik,
    };
  }

  factory KullaniciModelleri.fromMap(Map<String, dynamic> value) {
    return KullaniciModelleri(
        adi: value["adi"],
        soyadi: value["soyadi"],
        cinsiyet: value["cinsiyet"],
        dogumTarihi: value["dogumTarihi"],
        kanGrubu: value["kanGrubu"],
        eposta: value["eposta"],
        hastalik: value["hastalik"]);
  }
}
