import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hastatakip/ekranlar/ana_ekran/ana_sayfa/hastal%C4%B1k_berlirle/hastalik_belirle_controller.dart';
import 'package:hastatakip/ekranlar/model/secenek_model.dart';
import 'package:hastatakip/ekranlar/model/sonuc_model.dart';
import 'package:hastatakip/ekranlar/model/soru_model.dart';

class HastalikBelirle extends StatefulWidget {
  const HastalikBelirle({Key? key}) : super(key: key);

  @override
  State<HastalikBelirle> createState() => _HastalikBelirleState();
}

class _HastalikBelirleState extends State<HastalikBelirle> {
  HastalikBelirleController hastalikBelirleController =
      HastalikBelirleController();
  @override
  void initState() {
    super.initState();
    hastalikBelirleController.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Hastalık Belirle"),
      ),
      body: SafeArea(
        child: Obx(
          () => Column(
            children: [
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 20,
              ),
              IndexedStack(
                index: hastalikBelirleController.getCurrentIndex,
                children: List.generate(
                  hastalikBelirleController.soruModelList.length,
                  (index) => soruGoruntu(
                    hastalikBelirleController.soruModelList[index],
                    index,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget soruGoruntu(SoruModel model, int index) => Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 12),
              child: GestureDetector(
                onTap: () {
                  if (hastalikBelirleController.getCurrentIndex > 0) {
                    hastalikBelirleController.soruyusil(model.id);
                    hastalikBelirleController.setCurrentIndex(
                        hastalikBelirleController.getCurrentIndex - 1);
                  }
                },
                child: Text("Önceki soru"),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(model.soru),
          SizedBox(
            height: 25,
          ),
          ...List.generate(
            model.siklar.length,
            (i) => GestureDetector(
              onTap: () {
                if (hastalikBelirleController.idvarmi(model.siklar[i].id)) {
                  SonucModel sonucModel = hastalikBelirleController
                      .idYeGoreSonucModel(model.siklar[i].id);
                  sonucGoster(sonucModel);
                } else {
                  hastalikBelirleController.soruModelList[index].verilenCevap =
                      model.siklar[i].secenek;
                  hastalikBelirleController.soruekle(model.siklar[i].id);
                  if (hastalikBelirleController.getCurrentIndex <
                      hastalikBelirleController.soruModelList.length - 1) {
                    hastalikBelirleController.setCurrentIndex(
                        hastalikBelirleController.getCurrentIndex + 1);
                  }
                }
              },
              child: _sikLar(
                  model.siklar[i].secenek,
                  model.verilenCevap != null
                      ? model.verilenCevap == model.siklar[i]
                          ? true
                          : false
                      : false),
            ),
          )
        ],
      );
  void sonucGoster(SonucModel value) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(value.sonuc),
          ],
        ),
      ),
    );
  }

  Widget _sikLar(String value, bool isCevap) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isCevap ? Colors.blue : Colors.black,
              width: isCevap ? 3 : 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(value),
            ),
          ),
        ),
      );
}
