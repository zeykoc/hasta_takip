import 'package:hastatakip/ekranlar/model/secenek_model.dart';

class SoruModel {
  int id;
  String soru;
  List<Secenek> siklar;
  String? verilenCevap;
  SoruModel({
    required this.id,
    required this.soru,
    required this.siklar,
    this.verilenCevap,
  });
}
