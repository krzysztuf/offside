import 'package:chopper/chopper.dart';
import 'package:offside/core/exceptions/chopper_error.dart';

extension BodyUnwrapper<T> on Response<T> {
  T unwrap() {
    ensureSuccess();
    return this.body!;
  }
}

extension EnsureSuccess on Response {
  void ensureSuccess() {
    if (!isSuccessful) {
      throw ChopperError(
        response: this,
        message: 'Received error code $statusCode: ${base.reasonPhrase} (${base.request?.url})',
      );
    }
  }
}
