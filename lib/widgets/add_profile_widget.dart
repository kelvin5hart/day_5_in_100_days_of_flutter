import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddProfileWidget extends StatelessWidget {
  const AddProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topEnd,
      children: [
        const FaIcon(
          FontAwesomeIcons.circleUser,
          color: Colors.white,
          size: 35,
        ),
        Positioned(
          top: -6,
          right: -6,
          child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: const Color(0xFF0D111A),
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const FaIcon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 10,
              )),
        )
      ],
    );
  }
}