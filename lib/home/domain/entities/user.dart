import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String imageUrl;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        imageUrl,
      ];

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? imageUrl,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
