import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoadingIndicator(indicatorType: Indicator.ballPulse, color: Colors.white,);
  }
}