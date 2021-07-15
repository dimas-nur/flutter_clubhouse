import 'package:flutter/material.dart';

import '../../config/app_theme.dart';
import '../../data/entities/room_entity.dart';

class UpcommingRoom extends StatelessWidget {
  final List<RoomEntity> upcommingRooms;

  const UpcommingRoom({Key? key, required this.upcommingRooms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.secondaryBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 4, bottom: 4),
        child: Column(
          children: upcommingRooms
              .map(
                (upcommingRoom) =>
                    UpcomingRoomItem(upcommingRoom: upcommingRoom),
              )
              .toList(),
        ),
      ),
    );
  }
}

class UpcomingRoomItem extends StatelessWidget {
  final RoomEntity upcommingRoom;

  const UpcomingRoomItem({
    Key? key,
    required this.upcommingRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(upcommingRoom.time),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (upcommingRoom.club.isNotEmpty)
                  Flexible(
                    child: Text(
                      '${upcommingRoom.club} 🏠'.toUpperCase(),
                      style: Theme.of(context).textTheme.overline!.copyWith(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                Flexible(
                  child: Text(
                    upcommingRoom.name,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
