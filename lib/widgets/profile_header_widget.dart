import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'add_profile_widget.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500),
          ),
          Row(children: const [
            AddProfileWidget(),
            SizedBox(width: 40,),
            FaIcon(FontAwesomeIcons.ellipsisVertical, color: Colors.white, size: 30,)
          ],)

        ],
      ),
    );
  }
}

