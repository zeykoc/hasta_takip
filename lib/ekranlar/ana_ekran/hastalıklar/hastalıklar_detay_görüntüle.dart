import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hastatakip/sabitler/text_still.dart';

import 'hastalıklar_model.dart';

class HastalikDetay extends StatefulWidget {
  HastalikDetay({Key? key, required this.hastalik}) : super(key: key);
  HastaliklarModel hastalik;
  @override
  State<HastalikDetay> createState() => _HastalikDetayState();
}

class _HastalikDetayState extends State<HastalikDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              widget.hastalik.baslik,
              style: TextStil().baslikstyle,
            ),
            Divider(
              color: Colors.green,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(widget.hastalik.uzunAciklama),
            ),
            Divider(),
            Text(
              "Belirtileri",
              style: TextStil().baslikstyle,
            ),
            Text(widget.hastalik.belirtileri),
            ...List.generate(
              widget.hastalik.belirtiMaddeleri.length,
              (index) => belirtimaddesi(
                widget.hastalik.belirtiMaddeleri[index],
              ),
            ),
            Divider(),
            Text(
              "Korunma Yöntemleri",
              style: TextStil().baslikstyle,
            ),
            Text(widget.hastalik.korunmaYollari),
            ...List.generate(
              widget.hastalik.korunmaYontemleri.length,
              (index) => belirtimaddesi(
                widget.hastalik.korunmaYontemleri[index],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget belirtimaddesi(String deger) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 10,
            width: 10,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(deger),
          ),
        ),
      ],
    );
  }
}
