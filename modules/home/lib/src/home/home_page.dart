import 'package:flutter/material.dart';
import 'package:core/dependencies.dart';
import 'package:i18n/i18n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF7EC402),
        title: Text(
          "Pix Log",
          style: GoogleFonts.nunito(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "${S.of(context).recognition} ${S.of(context).default_for} ${S.of(context).logs} ${S.of(context).default_in} ${S.of(context).wood} ${S.of(context).default_in} ${S.of(context).manner} ${S.of(context).practice}",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/nature_image.png",
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Modular.to.pushNamed('/cam');
                    },
                    icon: const Icon(Icons.camera_enhance_rounded),
                    label: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text("Escanear"),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0XFF7EC402),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
