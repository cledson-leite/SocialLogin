import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:social_login/signup/data/repository/signup_with_email_pass.dart';

void main() {
  late final String email;
  late final String password;
  late final SignupWithEmailPass sut;

  setUpAll(() {
    email = Faker().internet.email();
    password = Faker().internet.password();
    sut = SignupWithEmailPass();
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
}
