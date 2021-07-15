import 'entity.dart';

class UserEntity extends BaseEntity {
  final String givenName;
  final String familyName;
  final String imageUrl;

  UserEntity({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}
