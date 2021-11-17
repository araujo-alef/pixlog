// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cam_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CamController on _CamController, Store {
  final _$camerasAtom = Atom(name: '_CamController.cameras');

  @override
  List<CameraDescription>? get cameras {
    _$camerasAtom.reportRead();
    return super.cameras;
  }

  @override
  set cameras(List<CameraDescription>? value) {
    _$camerasAtom.reportWrite(value, super.cameras, () {
      super.cameras = value;
    });
  }

  final _$recognitionsAtom = Atom(name: '_CamController.recognitions');

  @override
  List<dynamic>? get recognitions {
    _$recognitionsAtom.reportRead();
    return super.recognitions;
  }

  @override
  set recognitions(List<dynamic>? value) {
    _$recognitionsAtom.reportWrite(value, super.recognitions, () {
      super.recognitions = value;
    });
  }

  final _$imageHeightAtom = Atom(name: '_CamController.imageHeight');

  @override
  int get imageHeight {
    _$imageHeightAtom.reportRead();
    return super.imageHeight;
  }

  @override
  set imageHeight(int value) {
    _$imageHeightAtom.reportWrite(value, super.imageHeight, () {
      super.imageHeight = value;
    });
  }

  final _$imageWidthAtom = Atom(name: '_CamController.imageWidth');

  @override
  int get imageWidth {
    _$imageWidthAtom.reportRead();
    return super.imageWidth;
  }

  @override
  set imageWidth(int value) {
    _$imageWidthAtom.reportWrite(value, super.imageWidth, () {
      super.imageWidth = value;
    });
  }

  final _$detectAtom = Atom(name: '_CamController.detect');

  @override
  bool get detect {
    _$detectAtom.reportRead();
    return super.detect;
  }

  @override
  set detect(bool value) {
    _$detectAtom.reportWrite(value, super.detect, () {
      super.detect = value;
    });
  }

  final _$initCamAsyncAction = AsyncAction('_CamController.initCam');

  @override
  Future<void> initCam() {
    return _$initCamAsyncAction.run(() => super.initCam());
  }

  final _$_CamControllerActionController =
      ActionController(name: '_CamController');

  @override
  dynamic setRecognitions(dynamic recogn, dynamic imageH, dynamic imageW) {
    final _$actionInfo = _$_CamControllerActionController.startAction(
        name: '_CamController.setRecognitions');
    try {
      return super.setRecognitions(recogn, imageH, imageW);
    } finally {
      _$_CamControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cameras: ${cameras},
recognitions: ${recognitions},
imageHeight: ${imageHeight},
imageWidth: ${imageWidth},
detect: ${detect}
    ''';
  }
}
