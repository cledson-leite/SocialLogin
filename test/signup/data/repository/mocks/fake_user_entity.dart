import 'package:faker/faker.dart';
import 'package:social_login/signup/data/models/user_model.dart';
import 'package:social_login/signup/domain/entities/user.dart';

class FakeUserEntity {
  UserModel  get entity => UserModel.fromMap({
        'id': Faker().guid.guid(),
        'name': Faker().person.name(),
        'email': Faker().internet.email(),
        'imageUrl': Faker().internet.httpsUrl(),
      });
}