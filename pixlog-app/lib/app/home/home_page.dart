import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF7EC402),
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
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Reconhecimento para toras de madeira pinus de maneira prática!",
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Modular.to.pushNamed('/cam');
                    },
                    icon: Icon(Icons.camera_enhance_rounded),
                    label: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text("Escanear"),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0XFF7EC402),
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
