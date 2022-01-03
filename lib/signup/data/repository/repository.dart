
import 'package:social_login/signup/domain/entities/user.dart';
import 'package:social_login/signup/domain/usecases/i_signup_with_email_pass.dart';

class Repository implements ISignupWithEmailPass{
  @override
  Future<User> call(String email, String password) {
    // TODO: implement call
    throw UnimplementedError();
  }

}