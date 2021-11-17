import 'package:core/dependencies.dart';
import 'package:flutter/rendering.dart';
import 'package:mobx/mobx.dart';

part 'cam_controller.g.dart';

class CamController = _CamController with _$CamController;

abstract class _CamController with Store {

  @observable
  List<CameraDescription>? cameras;
  @observable
  List<dynamic>? recognitions;
  @observable
  int imageHeight = 0;
  @observable
  int imageWidth = 0;
  @observable
  bool detect = false;

  @action
  setRecognitions(recogn, imageH, imageW) {
      recognitions = recogn;
      imageHeight = imageH;
      imageWidth = imageW;
  }

  @action
  Future<Null> initCam() async {
    await Tflite.loadModel(
        model: "assets/pinus.tflite", labels: "assets/label.txt");
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      debugPrint('Error: $e.code\nError Message: $e.message');
    }
    Future.delayed(const Duration(milliseconds: 1000));
    detect = true;
  }
}
