import 'package:flutter/material.dart';
import 'package:trackizer_app/shared/constants_colors.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: 140,
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.amber,
              backgroundImage: ExactAssetImage(
                'assets/images/Avatar.png',
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'John Doe',
            style: TextStyle(
                color: Constants.secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          Text(
            'j.doe@gmail.com',
            style: TextStyle(
                color: Constants.primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 10),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 80,
            height: 32,
            decoration: BoxDecoration(
                color: Constants.ContainerColor,
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Text(
                'Edit profile',
                style: TextStyle(
                    color: Constants.secondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
