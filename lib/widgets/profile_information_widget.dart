import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileInformationWidget extends StatelessWidget {
  const ProfileInformationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: const Color(0xFF121622),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                  AssetImage("assets/images/profile pic.jpg"),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "John Wick",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const Text(
              "Actor | Pet Lover | Follow for more content",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 30),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                      color: const Color(0xFF151B2C),
                      borderRadius: BorderRadius.circular(5)),
                  child: const FaIcon(
                    FontAwesomeIcons.bookmark,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF141A28),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "50.2k",
                          style: TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          "Likes",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF141A28),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "12.5k",
                          style: TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          "Followers",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 4,),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF141A28),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "421",
                          style: TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          "Videos",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 16),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}