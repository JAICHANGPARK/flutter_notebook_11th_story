import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep735_furniture_app/ui/bubble_tab_indicator.dart';

class BubblePainter extends BoxPainter {
  final BubbleTabIndicator decoration;

  BubblePainter(this.decoration, VoidCallback? onChange) : super(onChange);

  double get indicatorHeight => decoration.indicatorHeight;

  Color get indicatorColor => decoration.indicatorColor;

  double get indicatorRadius => decoration.indicatorRadius;

  EdgeInsetsGeometry get padding => decoration.padding;

  EdgeInsetsGeometry get insets => decoration.insets;

  TabBarIndicatorSize get tabBarIndicatorSize => decoration.tabBarIndicatorSize;

  Rect _indicatorRectFor(Rect rect, TextDirection textDirection){
    Rect indicator = padding.resolve(textDirection).inflateRect(rect);

    if(tabBarIndicatorSize == TabBarIndicatorSize.label){
      indicator = insets.resolve(textDirection).deflateRect(rect);
    }

    return Rect.fromLTRB(indicator.left, indicator.top, indicator.width, indicator.height);
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration.size != null);
  }
}
