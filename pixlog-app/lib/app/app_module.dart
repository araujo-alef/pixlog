import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_realtime_detection/app/home/home_module.dart';

import 'cam/cam_module.dart';

class AppModule extends Module {
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/cam', module: CamModule()),
      ];
}
