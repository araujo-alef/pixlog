import 'package:flutter/material.dart';
import 'package:core/dependencies.dart';
import 'package:flutter/services.dart';
import 'package:i18n/i18n.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Pix Log',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    ).modular();
  }
}
