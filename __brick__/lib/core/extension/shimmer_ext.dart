import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

extension ShimmerEffect on Widget {
  /// [Example]
  ///  ListView.builder(
  //                 scrollDirection: Axis.vertical,
  //                 itemCount: 3,
  //                 itemBuilder: (BuildContext context, int index) {
  //                   return Container(
  //                     margin: EdgeInsets.all(10),
  //                     color: Colors.blue,
  //                     height: 150,
  //                     width: 50,
  //                   ).applyShimmer();
  Widget applyShimmer({bool enable = true, Color? baseColor, Color? highlightColor}) {
    if (enable) {


      return Shimmer.fromColors(
        baseColor: baseColor ?? Colors.grey.shade300,
        highlightColor: highlightColor ?? Colors.grey.shade100,
        enabled: enable,
        child: this,
      );
    } else {
      return this;
    }
  }
}
