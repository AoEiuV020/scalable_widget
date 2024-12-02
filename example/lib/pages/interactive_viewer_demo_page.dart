import 'package:flutter/material.dart';

import '../example_widget.dart';

class InteractiveViewerDemoPage extends StatefulWidget {
  const InteractiveViewerDemoPage({super.key});

  @override
  State<InteractiveViewerDemoPage> createState() =>
      _InteractiveViewerDemoPageState();
}

class _InteractiveViewerDemoPageState extends State<InteractiveViewerDemoPage> {
  final TransformationController _transformationController =
      TransformationController();

  void _handleDoubleTap() {
    _transformationController.value = Matrix4.identity();
  }

  @override
  void dispose() {
    _transformationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('InteractiveViewer演示'),
      ),
      body: GestureDetector(
        onDoubleTap: _handleDoubleTap,
        child: InteractiveViewer(
          transformationController: _transformationController,
          clipBehavior: Clip.none,
          minScale: 0.01,
          maxScale: 40.0,
          trackpadScrollCausesScale: true,
          child: const ExampleWidget(),
        ),
      ),
    );
  }
}
