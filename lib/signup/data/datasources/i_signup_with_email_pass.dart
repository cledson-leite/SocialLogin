import 'package:social_login/signup/data/models/user_model.dart';

abstract class IExternalSignupWithEmailPass {
  Future<UserModel> signupWithEmailPass(String email, String password);
}
