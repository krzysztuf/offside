import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

mixin ScrollToTopMixin<T extends StatefulWidget> on State<T> {
  ScrollController get scrollController;

  void scrollToTop() {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        0,
        duration: 300.milliseconds,
        curve: Curves.fastOutSlowIn,
      );
    }
  }
}
