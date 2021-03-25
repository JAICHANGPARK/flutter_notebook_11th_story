import 'package:flutter/material.dart';

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
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    throw UnimplementedError();
  }

}