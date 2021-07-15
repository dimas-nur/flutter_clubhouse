import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;
  final double borderSize;
  final Color borderColor;

  const UserProfileImage({
    Key? key,
    required this.imageUrl,
    this.size = 48.0,
    this.borderSize = 0,
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: borderSize,
        ),
      ),
      child: CircleAvatar(
        radius: size - borderSize,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}
