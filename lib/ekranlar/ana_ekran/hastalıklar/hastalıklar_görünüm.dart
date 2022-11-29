import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hastatakip/ekranlar/ana_ekran/hastal%C4%B1klar/hastal%C4%B1klar_controller.dart';
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
    return Column(children: [
      Expanded(
        child: ListView.builder(
          itemCount: hastaliklarController.hastaliklarList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) =>
              listTile(model: hastaliklarController.hastaliklarList[index]),
        ),
      ),
    ]);
  }

  Widget listTile({required HastaliklarModel model}) {
    return Card(
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.name),
              Text(model.kisaAciklama),
            ],
          )
        ],
      ),
    );
  }
}
