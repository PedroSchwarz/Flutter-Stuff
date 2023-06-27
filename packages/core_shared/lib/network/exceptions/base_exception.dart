abstract class BaseException implements Exception {
  final StackTrace? stack;
  final Object? object;

  BaseException(this.stack, this.object);
}
