import 'package:core_shared/network/exceptions/base_exception.dart';

class UnauthorizedException extends BaseException {
  UnauthorizedException(super.stack, super.object);
}
