
import 'package:social_login/signup/domain/entities/user.dart';

abstract class ISignupWithEmailPass {
  Future<User> call(String email, String password);
}
