import 'entity.dart';
import 'user_entity.dart';

class RoomEntity extends BaseEntity {
  final String club;
  final String name;
  final String time;
  final List<UserEntity> speakers;
  final List<UserEntity> followedBySpeakers;
  final List<UserEntity> others;

  RoomEntity({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}
