import 'package:faker/faker.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:social_login/signup/data/datasources/i_signup_with_email_pass.dart';
import 'package:social_login/signup/data/models/user_model.dart';
import 'package:social_login/signup/data/repository/signup_with_email_pass.dart';
import 'package:social_login/signup/domain/entities/user.dart';
import 'package:social_login/signup/domain/errors/i_login_exception.dart';

import 'mocks/fake_user_entity.dart';

class IExternalSignupWithEmailPassStub extends Mock
    implements IExternalSignupWithEmailPass {}

void main() {
  late final UserModel fakeUser;
  late final String email;
  late final String password;
  late final IExternalSignupWithEmailPass datasource;
  late final SignupWithEmailPass sut;

  setUpAll(() {
    fakeUser = FakeUserEntity().entity;
    email = Faker().internet.email();
    password = Faker().internet.password();
    datasource = IExternalSignupWithEmailPassStub();
    sut = SignupWithEmailPass(datasource);
  });
  test(
      'should throw an exception message if you dont receive an email as a parameter',
      () async {
    final result = await sut('', '');
    expect(result.fold((l) => l, (r) => null), 'Parameter not found');
  });
  test(
      'should throw an exception message if you dont receive an password as a parameter',
      () async {
    final result = await sut(email, '');
    expect(result.fold((l) => l, (r) => null), 'Parameter not found');
  });
  test('should pass the same email and password you receive', () async {
    await sut(email, password);
    expect(sut.email, email);
    expect(sut.password, password);
  });
  test(
      'should return a server error message if it cannot access the datasource',
      () async {
    when(() => datasource.signupWithEmailPass(email, password))
        .thenThrow(Error());
    final result = await sut(email, password);
    expect(
      result.fold((l) => l, (r) => null),
      'Unexpected failure.\nPlease try again soon...',
    );
    reset(datasource);
  });
  test('should return an error message received by the datasource', () async {
    when(() => datasource.signupWithEmailPass(email, password))
        .thenThrow(MissingParameterException());
    final result = await sut(email, password);
    expect(result.fold((l) => l, (r) => null), isA<String>());
    reset(datasource);
  });
  test('should return user on success', () async {
    when(() => datasource.signupWithEmailPass(email, password)).thenAnswer(
      (_) async => fakeUser,
    );
    final result = await sut(email, password);
    expect(result.fold((l) => l, (r) => r), isA<User>());
    expect(result.fold((l) => l, (r) => r), equals(fakeUser));
  });
}
