import 'package:async/async.dart';

extension ResultExtensions<T> on Result<T> {
  map({
    required Function(T) onSuccess,
    required Function(Object) onFailure,
  }) {
    if (isValue) {
      onSuccess(asValue!.value);
    } else {
      onFailure(asError!.error);
    }
  }
}
