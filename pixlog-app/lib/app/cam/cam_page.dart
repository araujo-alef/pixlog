import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tflite/tflite.dart';
import 'package:flutter_realtime_detection/app/designpix/widgets/bndbox.dart';
import 'package:flutter_realtime_detection/app/designpix/widgets/camera.dart';
import 'dart:math' as math;

class CamPage extends StatefulWidget {
  @override
  _CamPageState createState() => new _CamPageState();
}

class _CamPageState extends State<CamPage> {
  List<CameraDescription>? cameras;
  List<dynamic>? _recognitions;
  int _imageHeight = 0;
  int _imageWidth = 0;
  bool detect = false;

  setRecognitions(recognitions, imageHeight, imageWidth) {
    setState(() {
      _recognitions = recognitions;
      _imageHeight = imageHeight;
      _imageWidth = imageWidth;
    });
  }

  Future<Null> initCam() async {
    await Tflite.loadModel(
        model: "assets/pinus.tflite", labels: "assets/label.txt");
    try {
      cameras = await availableCameras();
    } on CameraException catch (e) {
      print('Error: $e.code\nError Message: $e.message');
    }
    Future.delayed(Duration(milliseconds: 1000));
    detect = true;
    setState(() {});
  }

  @override
  void initState() {
    initCam();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(
      body: detect == false
          ? Container()
          : Stack(
              children: [
                Camera(
                  cameras,
                  setRecognitions,
                ),
                BndBox(
                  _recognitions == null ? [] : _recognitions,
                  math.max(_imageHeight, _imageWidth),
                  math.min(_imageHeight, _imageWidth),
                  screen.height,
                  screen.width,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top * 1.5,
                    left: 24.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0XFF7EC402),
                    child: IconButton(
                      onPressed: () => Modular.to.pop(),
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0XFFFFFFFF),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
