import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_controller.dart';
import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_detay_g%C3%B6r%C3%BCnt%C3%BCle.dart';
import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_model.dart';

class HastaliklarGorunum extends StatefulWidget {
  const HastaliklarGorunum({Key? key}) : super(key: key);

  @override
  State<HastaliklarGorunum> createState() => _HastaliklarGorunumState();
}

class _HastaliklarGorunumState extends State<HastaliklarGorunum> {
  HastaliklarController hastaliklarController = HastaliklarController();
  @override
  void initState() {
    super.initState();
    hastaliklarController.onInit();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: hastaliklarController.hastaliklarList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                listTile(model: hastaliklarController.hastaliklarList[index]),
          ),
        ),
      ],
    );
  }

  Widget listTile({required HastaliklarModel model}) {
    return GestureDetector(
      onTap: () {
        Get.to(HastalikDetay(hastalik: model));
      },
      child: Card(
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12,
                ),
                Text(
                  model.name,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(model.kisaAciklama),
              ],
            )
          ],
        ),
      ),
    );
  }
}
