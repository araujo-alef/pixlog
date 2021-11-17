import 'package:cam/src/cam/cam_controller.dart';
import 'package:designpix/designpix.dart';
import 'package:flutter/material.dart';
import 'package:core/dependencies.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'dart:math' as math;

class CamPage extends StatefulWidget {
  const CamPage({Key? key}) : super(key: key);

  @override
  _CamPageState createState() => _CamPageState();
}

class _CamPageState extends ModularState<CamPage, CamController> {
  @override
  void initState() {
    controller.initCam();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Scaffold(body: Observer(
      builder: (_) {
        return controller.detect == false
            ? Container()
            : Stack(
                children: [
                  Camera(
                    controller.cameras,
                    controller.setRecognitions,
                  ),
                  BndBox(
                    controller.recognitions ?? [],
                    math.max(controller.imageHeight, controller.imageWidth),
                    math.min(controller.imageHeight, controller.imageWidth),
                    screen.height,
                    screen.width,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top * 1.5,
                      left: 24.0,
                    ),
                    child: CircleAvatar(
                      backgroundColor: const Color(0XFF7EC402),
                      child: IconButton(
                        onPressed: () => Modular.to.pop(),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          color: Color(0XFFFFFFFF),
                        ),
                      ),
                    ),
                  )
                ],
              );
      },
    ));
  }
}
