import 'package:day_5_in_100_days_of_flutter/data/images_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: stories.map((e) => Container(
          child: Stack(alignment: AlignmentDirectional.bottomCenter,children: [
            Image.asset(e, fit: BoxFit.cover, height: double.infinity,),
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.black87,
                      ],
                      stops: const [
                        0.2,
                        1.0
                      ])),
            ),
            Positioned(
              left: 10,
              bottom: 100,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: const [
                Text(
                  "John Wick",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "PS Credit goes to Alisha",
                  style: TextStyle(color: Colors.grey),
                ),
              ],),
            ),
            Positioned(
              right: 20,
              bottom: 100,
              child: Column(children:  [
                Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: const CircleAvatar(
                          radius: 24,
                          backgroundImage:
                          AssetImage("assets/images/profile pic.jpg"),
                        )),
                    const SizedBox(height: 5,),
                    const Text(
                      "25.14k",
                      style: TextStyle(color: Colors.white, ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Column(children: const [
                  FaIcon(FontAwesomeIcons.heart, size: 40, color: Colors.white,),
                  SizedBox(height: 5,),
                  Text(
                    "25.14k",
                    style: TextStyle(color: Colors.white),
                  ),
                ],),
                const SizedBox(height: 30,),
                Column(children: const [
                  FaIcon(FontAwesomeIcons.message, size: 40, color: Colors.white,),
                  SizedBox(height: 5,),
                  Text(
                    "25.14k",
                    style: TextStyle(color: Colors.white, ),
                  ),
                ],),
                const SizedBox(height: 30,),
                Column(children: const [
                  FaIcon(FontAwesomeIcons.shareNodes, size: 40, color: Colors.white,),
                  SizedBox(height: 5,),
                  Text(
                    "25.14k",
                    style: TextStyle(color: Colors.white),
                  ),
                ],),
                const SizedBox(height: 30,),
                Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF41B76D)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.black87,
                      child: FaIcon(FontAwesomeIcons.music),
                      radius: 24,
                    )),


              ],),
            ),
          ]),
        )).toList(),
      ),
    );
  }
}
