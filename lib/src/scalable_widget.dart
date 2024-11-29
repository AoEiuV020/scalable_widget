import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './scalable_state.dart';

class ScalableWidget extends StatelessWidget {
  final Widget child;

  const ScalableWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ScalableState(),
      child: child,
      builder: (context, child) {
        final scalableState = context.watch<ScalableState>();
        return GestureDetector(
          behavior: HitTestBehavior.opaque, // 确保事件覆盖整个父控件区域
          onScaleStart: (details) {
            // 在ScaleStart时更新状态
            scalableState.onScaleStart(details);
          },
          onScaleUpdate: (details) {
            // 在ScaleUpdate时更新状态
            scalableState.onScaleUpdate(details);
          },
          onScaleEnd: (details) {
            // 在ScaleEnd时更新状态
            scalableState.onScaleEnd(details);
          },
          child: Transform.translate(
            offset: scalableState.offset,
            child: Transform.scale(
              scale: scalableState.scale,
              child: child,
            ),
          ),
        );
      },
    );
  }
}
