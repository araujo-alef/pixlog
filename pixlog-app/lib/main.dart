import 'package:flutter/material.dart';
import 'package:core/dependencies.dart';
import 'app/app_module.dart';
import 'app/app_widget.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}