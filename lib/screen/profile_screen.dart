import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/images_data.dart';
import '../widgets/profile_header_widget.dart';
import '../widgets/profile_information_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF0D111A),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
          //Profile Header.
          const ProfileHeaderWidget(),

          //Profile Information
          const ProfileInformationWidget(),

          //Tabs
          const TabBar(
            tabs: [
              Tab(
                text: 'Followers',
              ),
              Tab(text: 'Likes'),
            ],
            labelColor: Color(0xFF41B76D),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color(0xFF41B76D),
          ),

          //TabView
          Expanded(
            child: TabBarView(children: [
              GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 2/3),
                  itemBuilder: (context, item) {
                    return Container(
                      margin: const EdgeInsets.all(4),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          SizedBox(
                            height: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  images[item],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            height: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                gradient: LinearGradient(
                                    begin: FractionalOffset.topCenter,
                                    end: FractionalOffset.bottomCenter,
                                    colors: [
                                      Colors.grey.withOpacity(0.0),
                                      Colors.black,
                                    ],
                                    stops: const [
                                      0.4,
                                      1.0
                                    ])),
                          ),
                          Positioned(
                              bottom: 10,
                              child: Row(
                                children: const [
                                  FaIcon(FontAwesomeIcons.googlePlay, size: 18, color: Colors.white,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "235k",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    );
                  }),
              GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 2/3),
                  itemBuilder: (context, item) {
                    return Container(
                      margin: const EdgeInsets.all(10),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          SizedBox(
                            height: double.infinity,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  images[item],
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Positioned(
                              bottom: 10,
                              child: Row(
                                children: const [
                                  FaIcon(FontAwesomeIcons.googlePlay, size: 18, color: Colors.white,),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "235k",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    );
                  })
            ]),
          )
            ],
          ),
        ),
      ),
    );
  }
}
