import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/data_providers/dummy_data.dart';
import '../../data/entities/entity.dart';
import '../../data/entities/room_entity.dart';
import '../widgets/widget.dart';

class RoomPage extends StatelessWidget {
  final RoomEntity room;

  const RoomPage({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: double.infinity,
        leading: TextButton.icon(
          style: TextButton.styleFrom(primary: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(CupertinoIcons.chevron_down),
          label: const Text('All rooms'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.doc),
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${room.club} 🏠'.toUpperCase(),
                        style: Theme.of(context).textTheme.overline?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(CupertinoIcons.ellipsis),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 36),
                    child: Text(
                      room.name,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            _speakerSection(room.speakers),
            _followedBySpeakerSection(context, room.followedBySpeakers),
            _othersInRoom(context, room.others),
          ],
        ),
      ),
    );
  }

  Widget _speakerSection(List<UserEntity> speakers) => SliverPadding(
        padding: const EdgeInsets.all(20),
        sliver: SliverGrid.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          children: speakers
              .map((speaker) => RoomSpeakerProfile(
                    speaker: speaker,
                    size: 66,
                    isNew: Random().nextBool(),
                    isMuted: Random().nextBool(),
                  ))
              .toList(),
        ),
      );

  Widget _followedBySpeakerSection(
    BuildContext context,
    List<UserEntity> users,
  ) =>
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Followed by speaker',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.7,
                crossAxisCount: 4,
                children: users
                    .map((user) => RoomSpeakerProfile(
                          speaker: user,
                          size: 66,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      );

  Widget _othersInRoom(
    BuildContext context,
    List<UserEntity> users,
  ) =>
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Others in room',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.7,
                crossAxisCount: 4,
                children: users
                    .map((user) => RoomSpeakerProfile(
                          speaker: user,
                          size: 66,
                          isNew: Random().nextBool(),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      );
}
