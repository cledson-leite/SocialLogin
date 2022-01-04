
import 'package:dartz/dartz.dart';
import 'package:social_login/signup/domain/entities/user.dart';

abstract class ISignupWithEmailPass {
  Future<Either<String, User>> call(String? email, String? password);
}
