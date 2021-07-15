import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/data_providers/dummy_data.dart';
import '../widgets/upcoming_room.dart';
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
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child: UserProfileImage(
                imageUrl: DummyData.getCurrentUser().imageUrl,
                size: 36,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
            children: [
              UpcommingRoom(upcommingRooms: DummyData.getUpcomingRoomsList()),
              const SizedBox(height: 12),
              ...DummyData.getRoomsList()
                  .map((roomEntity) => RoomCard(roomEntity: roomEntity))
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          CupertinoIcons.add,
                          size: 21,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: ' Start a room',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: 40,
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.circle_grid_3x3_fill,
                    size: 28,
                  ),
                ),
                Positioned(
                  right: 4.6,
                  bottom: 11.8,
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
