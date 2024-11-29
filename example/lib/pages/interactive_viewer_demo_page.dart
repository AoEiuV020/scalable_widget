import 'package:flutter/material.dart';

import '../example_widget.dart';

class InteractiveViewerDemoPage extends StatelessWidget {
  const InteractiveViewerDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('InteractiveViewer演示'),
      ),
      body: Center(
        child: InteractiveViewer(
          clipBehavior: Clip.none,
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.01,
          maxScale: 40.0,
          trackpadScrollCausesScale: true,
          child: const ExampleWidget(),
        ),
      ),
    );
  }
}
