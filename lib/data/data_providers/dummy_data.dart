import '../entities/entity.dart';

class DummyData {
  /* --- User --- */

  static UserEntity getCurrentUser() => UserEntity(
        givenName: 'Marcus',
        familyName: 'Ng',
        imageUrl:
            'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
      );

  static List<UserEntity> getAllUser() => [
        UserEntity(
          givenName: 'Marcus',
          familyName: 'Ng',
          imageUrl:
              'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
        ),
        UserEntity(
          givenName: 'David',
          familyName: 'Brooks',
          imageUrl:
              'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        ),
        UserEntity(
          givenName: 'Jane',
          familyName: 'Doe',
          imageUrl:
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        ),
        UserEntity(
          givenName: 'Matthew',
          familyName: 'Hinkle',
          imageUrl:
              'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
        ),
        UserEntity(
          givenName: 'Amy',
          familyName: 'Smith',
          imageUrl:
              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
        ),
        UserEntity(
          givenName: 'Ed',
          familyName: 'Morris',
          imageUrl:
              'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
        ),
        UserEntity(
          givenName: 'Carolyn',
          familyName: 'Duncan',
          imageUrl:
              'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
        ),
        UserEntity(
          givenName: 'Paul',
          familyName: 'Pinnock',
          imageUrl:
              'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        ),
        UserEntity(
            givenName: 'Elizabeth',
            familyName: 'Wong',
            imageUrl:
                'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
        UserEntity(
          givenName: 'James',
          familyName: 'Lathrop',
          imageUrl:
              'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
        ),
        UserEntity(
          givenName: 'Jessie',
          familyName: 'Samson',
          imageUrl:
              'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
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
