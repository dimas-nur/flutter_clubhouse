import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clubhouse/data/entities/user_entity.dart';
import 'package:flutter_clubhouse/presetation/widgets/widget.dart';

class RoomSpeakerProfile extends StatelessWidget {
  final UserEntity speaker;
  final double size;
  final bool isNew;
  final bool isMuted;

  const RoomSpeakerProfile({
    Key? key,
    required this.speaker,
    this.size = 48,
    this.isNew = false,
    this.isMuted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: UserProfileImage(
                imageUrl: speaker.imageUrl,
                size: size,
              ),
            ),
            if (isNew)
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '🎉',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            if (isMuted)
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: const Icon(CupertinoIcons.mic_slash_fill),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          speaker.givenName,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
