import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  const ExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        // 取可用空间的宽高中的较小值
        final containerSize =
            size.width < size.height ? size.width : size.height;

        // Center 和 SizedBox 的组合，不会影响父控件的大小，
        return Center(
          child: SizedBox(
            width: containerSize,
            height: containerSize,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: Image.asset(
                'assets/images/example_4252_2835.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
