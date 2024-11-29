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
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.1,
          maxScale: 4.0,
          child: const ExampleWidget(),
        ),
      ),
    );
  }
} 