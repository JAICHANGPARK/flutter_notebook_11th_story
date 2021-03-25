import 'package:flutter/material.dart';
import 'package:flutter_notebook_11th_story/ep735_furniture_app/ui/bubble_painter.dart';

class BubbleTabIndicator extends Decoration {
  final double indicatorHeight;
  final Color indicatorColor;
  final double indicatorRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry insets;
  final TabBarIndicatorSize tabBarIndicatorSize;


  BubbleTabIndicator({
    this.indicatorHeight: 20, this.indicatorColor: Colors.greenAccent,
    this.indicatorRadius: 100.0, this.padding
        : const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
    this.insets:const EdgeInsets.symmetric( horizontal: 5.0),
    this.tabBarIndicatorSize : TabBarIndicatorSize.label
  });

  @override
  Decoration? lerpFrom(Decoration? a, double t) {
    if(a is BubbleTabIndicator){
      return BubbleTabIndicator(
        padding: EdgeInsetsGeometry.lerp(a.padding, padding, t)!,
        insets: EdgeInsetsGeometry.lerp(a.insets, insets, t)!
      );
    }
    return super.lerpFrom(a, t);
  }
  @override
  Decoration? lerpTo(Decoration? b, double t) {
    // TODO: implement lerpTo
    if(b is BubbleTabIndicator){
      return BubbleTabIndicator(
          padding: EdgeInsetsGeometry.lerp(padding, b.padding, t)!,
          insets: EdgeInsetsGeometry.lerp(insets, b.insets, t)!
      );
    }
    return super.lerpTo(b, t);
  }

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return BubblePainter(this, onChanged);
  }

}