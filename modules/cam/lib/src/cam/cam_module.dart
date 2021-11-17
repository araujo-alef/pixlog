import 'package:core/dependencies.dart';

import 'cam_controller.dart';
import 'cam_page.dart';

class CamModule extends Module {
  @override
  List<Bind<Object>> get binds => [
    Bind((i) => CamController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const CamPage())
  ];
}