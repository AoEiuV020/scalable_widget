import 'package:flutter/material.dart';

import 'package:scalable_widget/scalable_widget.dart';

import '../example_widget.dart';

class ScaleWidgetDemoPage extends StatelessWidget {
  const ScaleWidgetDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('缩放控件演示'),
      ),
      body: const Center(
        child: ScalableWidget(
          child: ExampleWidget(),
        ),
      ),
    );
  }
}
