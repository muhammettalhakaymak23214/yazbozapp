import 'package:flutter/material.dart';
import 'package:yazbozapp/sayfalarArasiGecis.dart';

class AnaEkran extends StatefulWidget {
  const AnaEkran({super.key});

  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  Widget build(BuildContext context) {
    Widget button(buttonAdi, buttonid) {
      return TextButton(
        onPressed: () {
          SayfaGecisleri().sayfagec(buttonid, context);
        },
        child: Text(buttonAdi, style: TextStyle(color: Colors.black)),
        style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15));
          }),
          side: MaterialStateProperty.resolveWith<BorderSide>(
              (states) => BorderSide(color: Colors.black, width: 2)),
        ),
      );
    }

    GestureDetector button3(buttonid, buttonAdi) {
      return GestureDetector(
        onTap: () {
          setState(() {
            SayfaGecisleri().sayfagec(buttonid, context);
          });
        },
        child: AnimatedContainer(
            child: Center(
                child: Text(
              buttonAdi,
              style: TextStyle(fontSize: 26, color: Colors.white),
            )),
            duration: const Duration(microseconds: 200),
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[500]!,
                      offset: const Offset(4, 4),
                      blurRadius: 15,
                      spreadRadius: 1),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 15,
                      spreadRadius: 1)
                ])),
      );
    }

    SizedBox bosluk() {
      return const SizedBox(
        height: 20,
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            button3(1, "OKEY"),
            bosluk(),
            button3(2, "BATAK"),
            bosluk(),
            button3(2, "PİŞTİ"),
            bosluk(),
            button3(3, "KİNG"),
            Divider(
              color: Colors.grey,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
