class HastaliklarModel {
  String name;
  String kisaAciklama;
  String uzunAciklama;
  List<String> belirtiMaddeleri;
  List<String> korunmaYontemleri;
  String baslik;
  String belirtileri;
  String korunmaYollari;
  HastaliklarModel({
    required this.belirtileri,
    required this.korunmaYollari,
    required this.name,
    required this.baslik,
    required this.kisaAciklama,
    required this.uzunAciklama,
    required this.belirtiMaddeleri,
    required this.korunmaYontemleri,
  });
}
