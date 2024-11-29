import 'package:flutter/material.dart';

import 'interactive_viewer_demo_page.dart';
import 'scale_widget_demo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('缩放控件示例'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('ScaleWidget演示'),
            subtitle: const Text('自定义缩放控件实现'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ScaleWidgetDemoPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('InteractiveViewer演示'),
            subtitle: const Text('Flutter内置缩放控件'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const InteractiveViewerDemoPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
