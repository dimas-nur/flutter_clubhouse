import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/room_page.dart';

import '../../data/entities/entity.dart';
import 'widget.dart';

class RoomCard extends StatelessWidget {
  final RoomEntity roomEntity;

  const RoomCard({
    Key? key,
    required this.roomEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (_) => RoomPage(room: roomEntity),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${roomEntity.club} 🏠'.toUpperCase(),
                  style: Theme.of(context).textTheme.overline?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  roomEntity.name,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: StackImageRoomCard(roomEntity: roomEntity),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...roomEntity.speakers.map(
                            (speaker) => Text(
                              '${speaker.givenName} ${speaker.familyName} 💬',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(fontSize: 16),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                  text:
                                      '${roomEntity.speakers.length + roomEntity.followedBySpeakers.length + roomEntity.others.length} '),
                              const WidgetSpan(
                                child: Icon(
                                  CupertinoIcons.person_fill,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ),
                              TextSpan(
                                  text: ' / ${roomEntity.speakers.length} '),
                              const WidgetSpan(
                                child: Icon(
                                  CupertinoIcons.chat_bubble_fill,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StackImageRoomCard extends StatelessWidget {
  final RoomEntity roomEntity;

  const StackImageRoomCard({
    Key? key,
    required this.roomEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      width: 66,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: UserProfileImage(
              size: 46,
              imageUrl: roomEntity.speakers[1].imageUrl,
            ),
          ),
          UserProfileImage(
            size: 50,
            imageUrl: roomEntity.speakers[0].imageUrl,
            borderSize: 4,
          ),
        ],
      ),
    );
  }
}
