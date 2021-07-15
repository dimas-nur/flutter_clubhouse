import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse/data/data_providers/dummy_data.dart';
import 'package:flutter_clubhouse/data/entities/room_entity.dart';
import 'package:flutter_clubhouse/presetation/widgets/widget.dart';

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
    );
  }
}
