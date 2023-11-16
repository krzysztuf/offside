import 'package:chopper/chopper.dart';

extension RequestContainsJsonHeader on Request {
  bool get containsJsonHeader {
    return headers[contentTypeKey]?.contains(jsonHeaders) ?? false;
  }
}

extension ResponseContainsJsonHeader on Response {
  bool get containsJsonHeader {
    return headers[contentTypeKey]?.contains(jsonHeaders) ?? false;
  }
}
