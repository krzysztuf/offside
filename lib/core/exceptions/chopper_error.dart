import 'package:chopper/chopper.dart';

class ChopperError implements Exception {
  final Response? response;
  final String message;

  ChopperError({this.response, this.message = ''});

  @override
  String toString() => 'ChopperError: $message';
}
