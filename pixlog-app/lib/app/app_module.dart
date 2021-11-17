import 'package:cam/cam.dart';
import 'package:core/dependencies.dart';
import 'package:home/home.dart';

class AppModule extends Module {
  @override
  List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
        ModuleRoute('/cam', module: CamModule()),
      ];
}
