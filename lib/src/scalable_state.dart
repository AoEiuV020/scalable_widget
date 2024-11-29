import 'package:flutter/material.dart';

class ScalableState extends ChangeNotifier {
  double _scale = 1.0; // 缩放比例
  Offset _offset = Offset.zero; // 偏移量
  late Offset _initialFocalPoint;
  late double _previousScale;
  late Offset _previousOffset;

  double get scale => _scale;
  Offset get offset => _offset;

  // 记录初始化状态
  void onScaleStart(ScaleStartDetails details) {
    _previousScale = _scale;
    _initialFocalPoint = details.focalPoint;
    _previousOffset = _offset;
  }

  // 更新缩放和偏移
  void onScaleUpdate(ScaleUpdateDetails details) {
    _scale = _previousScale * details.scale;

    _offset = _previousOffset;
    _offset = _offset + (details.focalPoint - _initialFocalPoint);

    notifyListeners();
  }

  // 结束缩放
  void onScaleEnd(ScaleEndDetails details) {
    _previousScale = 1.0;
    _previousOffset = _offset;
    notifyListeners();
  }

  // 重置状态
  void reset() {
    _scale = 1.0;
    _offset = Offset.zero;
    notifyListeners();
  }
}
