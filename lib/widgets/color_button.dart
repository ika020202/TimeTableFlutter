import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:mochily_timetable/providers.dart';

class ColorButton extends ConsumerWidget {
  final Color someColor;

  ColorButton({
    Key? key,
    required this.someColor,
    //required this.themeColorChange,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentColor = ref.read(currentColorIntProvider);

    return Expanded(
      child: SizedBox(
        height: 28, // Widgetの幅を指定
        child: ElevatedButton(
          child: Text(""),
          style: ElevatedButton.styleFrom(
            primary: someColor,
            shape: CircleBorder(
              side: BorderSide(
                color: someColor,
                width: 1.0,
                style: BorderStyle.solid,
              ),
            ),
          ),
          onPressed: () {
            currentColor.state = someColor.value;
          },
        ),
      ),
    );
  }
}
