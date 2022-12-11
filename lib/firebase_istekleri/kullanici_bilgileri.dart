import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../ekranlar/model/kullanici_bilgileri_model.dart';

class KullaniciBilgileriSorgulari {
  Future<void> verileriDbyeKaydet(KullaniciModelleri kullaniciBilgileri) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore referans = FirebaseFirestore.instance;
    await referans
        .collection("kullaniciBilgileri")
        .doc(auth.currentUser!.uid)
        .collection("kullaniciBilgileri")
        .doc("1")
        .set(kullaniciBilgileri.toMap());
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> verileriAl() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore referans = FirebaseFirestore.instance;

    return await referans
        .collection("kullaniciBilgileri")
        .doc(auth.currentUser!.uid)
        .collection("kullaniciBilgileri")
        .doc("1")
        .get();
  }
}
