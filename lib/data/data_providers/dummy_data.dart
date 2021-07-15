import '../entities/entity.dart';

class DummyData {
  /* --- User --- */

  static UserEntity getCurrentUser() => UserEntity(
        givenName: 'Marcus',
        familyName: 'Ng',
        imageUrl: 'https://randomuser.me/api/portraits/med/men/17.jpg',
      );

  static List<UserEntity> getAllUser() => [
        UserEntity(
          givenName: 'Marcus',
          familyName: 'Ng',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/17.jpg',
        ),
        UserEntity(
          givenName: 'David',
          familyName: 'Brooks',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/74.jpg',
        ),
        UserEntity(
          givenName: 'Jane',
          familyName: 'Doe',
          imageUrl: 'https://randomuser.me/api/portraits/med/women/10.jpg',
        ),
        UserEntity(
          givenName: 'Matthew',
          familyName: 'Hinkle',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/53.jpg',
        ),
        UserEntity(
          givenName: 'Amy',
          familyName: 'Smith',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/82.jpg',
        ),
        UserEntity(
          givenName: 'Ed',
          familyName: 'Morris',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/46.jpg',
        ),
        UserEntity(
          givenName: 'Carolyn',
          familyName: 'Duncan',
          imageUrl: 'https://randomuser.me/api/portraits/med/women/35.jpg',
        ),
        UserEntity(
          givenName: 'Paul',
          familyName: 'Pinnock',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/11.jpg',
        ),
        UserEntity(
            givenName: 'Elizabeth',
            familyName: 'Wong',
            imageUrl: 'https://randomuser.me/api/portraits/med/women/50.jpg'),
        UserEntity(
          givenName: 'James',
          familyName: 'Lathrop',
          imageUrl: 'https://randomuser.me/api/portraits/med/men/30.jpg',
        ),
        UserEntity(
          givenName: 'Jessie',
          familyName: 'Samson',
          imageUrl: 'https://randomuser.me/api/portraits/med/women/90.jpg',
        ),
      ];

  /* --- Room --- */

  static List<RoomEntity> getUpcomingRoomsList() => [
        RoomEntity(
          club: 'Flutter',
          name: 'Flutter Engage Recap 🔴',
          time: '3:00 PM',
        ),
        RoomEntity(
          club: 'New User Onboarding',
          name: 'Welcome to Clubhouse 👋',
          time: '7:00 PM',
        ),
        RoomEntity(
          club: '',
          name: 'Clubhouse Turns 1',
          time: '9:00 PM',
        ),
      ];

  static List<RoomEntity> getRoomsList() => [
        RoomEntity(
          club: 'Social Society',
          name: 'Welcome to Clubhouse 🎉 (Walkthrough with Q&A)',
          speakers: (List<UserEntity>.from(getAllUser())..shuffle())
              .getRange(0, 4)
              .toList(),
          followedBySpeakers: List<UserEntity>.from(getAllUser())..shuffle(),
          others: List<UserEntity>.from(getAllUser())..shuffle(),
        ),
        RoomEntity(
          club: 'Good Time',
          name: '⏰ A Very Important Person on Good Time',
          speakers: (List<UserEntity>.from(getAllUser())..shuffle())
              .getRange(0, 4)
              .toList(),
          followedBySpeakers: List<UserEntity>.from(getAllUser())..shuffle(),
          others: List<UserEntity>.from(getAllUser())..shuffle(),
        ),
        RoomEntity(
          club: 'NYU girls roasting tech guys',
          name: 'love and bitcoin edition 💰',
          speakers: (List<UserEntity>.from(getAllUser())..shuffle())
              .getRange(0, 4)
              .toList(),
          followedBySpeakers: List<UserEntity>.from(getAllUser())..shuffle(),
          others: List<UserEntity>.from(getAllUser())..shuffle(),
        ),
      ];
}
