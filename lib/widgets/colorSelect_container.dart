import 'package:flutter/material.dart';

import 'color_button.dart';
import 'package:mochily_timetable/setting/setting_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class ColorSelectContainer extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO ユーザーの色を追加する機能を作成中のため改修
    //final currentColor = ref.watch(currentColorIntProvider);

    return Container(
      padding: EdgeInsets.only(left: 9, right: 8),
      height: 60.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorList.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: ColorList.shadow,
            offset: Offset(3.0, 4.0),
            blurRadius: 4.0,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.color_lens_rounded,
            color: ColorList.grey,
            size: 35,
          ),
          ColorButton(someColor: ColorList.white),
          ColorButton(someColor: ColorList.amber),
          ColorButton(someColor: ColorList.pinkAccent),
          ColorButton(someColor: ColorList.deepPurpleAccent),
          ColorButton(someColor: ColorList.cyan),
          ColorButton(someColor: ColorList.greenAccent),
        ],
      ),
    );
  }
}
