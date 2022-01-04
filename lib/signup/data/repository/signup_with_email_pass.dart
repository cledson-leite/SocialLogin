import 'package:dartz/dartz.dart';
import 'package:social_login/signup/domain/entities/errors/i_login_exception.dart';

class SignupWithEmailPass {
  late String email;
  late String password;

  Future<Either<String, void>> call(String email, String password) async {
    this.email = email;
    this.password = password;
    if (email == null || email.isEmpty) {
      return left(MissingParameterException().message);
    }
    if (password == null || password.isEmpty) {
      return left(MissingParameterException().message);
    }
    return right(null);
  }
}
