import 'package:social_login/home/domain/entities/user.dart';

abstract class ISignupWithEmailPass {
  Future<User> call(String email, String password);
}
