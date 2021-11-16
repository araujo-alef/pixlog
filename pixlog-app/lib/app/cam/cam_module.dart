import 'package:flutter_modular/flutter_modular.dart';

import 'cam_page.dart';

class CamModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => CamPage())
  ];
}