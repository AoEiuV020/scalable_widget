import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 取可用空间的宽高中的较小值
        final containerSize = constraints.maxWidth < constraints.maxHeight
            ? constraints.maxWidth
            : constraints.maxHeight;

        return Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.blue, width: 2),
          ),
          child: Image.asset(
            'assets/images/example_4252_2835.jpg',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
