import 'package:core/dependencies.dart';

import 'home_page.dart';


class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (_, args) => const HomePage())
  ];
}