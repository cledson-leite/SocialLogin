// ignore_for_file: unnecessary_null_comparison

import 'package:dartz/dartz.dart';
import 'package:social_login/signup/data/datasources/i_signup_with_email_pass.dart';
import 'package:social_login/signup/domain/errors/i_login_exception.dart';
import 'package:social_login/signup/domain/entities/user.dart';
import 'package:social_login/signup/domain/usecases/i_signup_with_email_pass.dart';

class SignupWithEmailPass implements ISignupWithEmailPass {
  final IExternalSignupWithEmailPass datasource;

  SignupWithEmailPass(this.datasource);

  late String email;
  late String password;

  @override
  Future<Either<String, User>> call(String? email, String? password) async {
    this.email = email!;
    this.password = password!;
    if (email == null || email.isEmpty) {
      return left(MissingParameterException().message);
    }
    if (password == null || password.isEmpty) {
      return left(MissingParameterException().message);
    }
    try {
      final result = await datasource.signupWithEmailPass(
        this.email,
        this.password,
      );
      return right(result);
    } on ILoginException catch (error) {
      return left(error.message);
    } catch (_) {
      return left(ServerException().message);
    }
  }
}
