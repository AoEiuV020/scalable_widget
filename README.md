# 放弃

本想自己封装一个的， 但是InteractiveViewer太好用了， 
1. 缩放中心在双指中间，
1. 可以实现鼠标滚轮缩放，
1. 可以限制缩放范围，
1. 可以限制拖动范围，

```dart
InteractiveViewer(
  clipBehavior: Clip.none,
  boundaryMargin: const EdgeInsets.all(20.0),
  minScale: 0.01,
  maxScale: 40.0,
  trackpadScrollCausesScale: true,
  child: const ExampleWidget(),
)
```