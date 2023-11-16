import 'package:flutter/material.dart';

class If extends StatelessWidget {
  final Widget then;
  final Widget orElse;
  final bool Function() condition;

  const If(
    this.condition, {
    super.key,
    required this.then,
    required this.orElse,
  });

  @override
  Widget build(BuildContext context) {
    return condition() ? then : orElse;
  }
}
