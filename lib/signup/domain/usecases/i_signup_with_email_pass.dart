
import 'package:dartz/dartz.dart';
import 'package:social_login/signup/domain/entities/errors/i_login_exception.dart';
import 'package:social_login/signup/domain/entities/user.dart';

abstract class ISignupWithEmailPass {
  Future<Either<ILoginException, User>> call(String email, String password);
}
