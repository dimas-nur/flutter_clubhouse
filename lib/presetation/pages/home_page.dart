import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../config/app_theme.dart';
import '../widgets/upcoming_room.dart';

import '../../data/data_providers/dummy_data.dart';
import '../widgets/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, size: 28),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.envelope_open, size: 26),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.calendar, size: 28),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.bell, size: 28),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
            child: UserProfileImage(
              imageUrl: DummyData.getCurrentUser().imageUrl,
              size: 36,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 120),
            children: [
              UpcommingRoom(upcommingRooms: DummyData.getUpcomingRoomsList()),
              const SizedBox(height: 12),
              ...DummyData.getRoomsList()
                  .map((roomEntity) => RoomCard(roomEntity: roomEntity))
            ],
          ),
        ],
      ),
    );
  }
}
