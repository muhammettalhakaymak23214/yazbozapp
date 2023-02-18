import 'package:flutter/material.dart';
import 'package:yazbozapp/sayfalar/batak.dart';
import 'package:yazbozapp/sayfalar/okey101.dart';

class SayfaGecisleri {
  void sayfagec(
    int butonId,
    context,
  ) {
    if (butonId == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Okey101()));
    } else if (butonId == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Batak()));
    }
  }
}
