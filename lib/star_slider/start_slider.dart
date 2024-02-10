import 'package:flutter/material.dart';

// このコードでは、_importanceという状態を持つStatefulWidgetを作成しています。Textウィジェットでは、_importanceの値に基づいて星を表示します。Sliderウィジェットでは、_importanceの値をユーザーが変更できるようにしています。Sliderの値が変更されると、onChangedコールバックが呼び出され、_importanceの値が更新され、UIが再描画されます。

class StarSlider extends StatefulWidget {
  const StarSlider({super.key});

  @override
  _StarSliderState createState() => _StarSliderState();
}

class _StarSliderState extends State<StarSlider> {
  // this is the star importance state
  double _importance = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // this is Text widget is using the state
        Text('⭐️' * _importance.toInt()),
        // this is Slider widget is changing the state
        Slider(
          value: _importance,
          min: 1,// min value
          max: 5,// max value
          divisions: 4,// number of divisions
          onChanged: (double value) {
            setState(() {
              // this is changing the state
              _importance = value;
            });
          },
        ),
      ],
    );
  }
}
