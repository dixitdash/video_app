import 'package:flutter/material.dart';

extension Sizer on num {
  double h(context) {
    double height = MediaQuery.of(context).size.height;
    return (this * height) / 100;
  }

  double w(context) {
    double width = MediaQuery.of(context).size.width;
    return (this * width) / 100;
  }
}
