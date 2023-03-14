import 'package:flutter/material.dart';
import 'package:flutter_profile_practice/theme.dart';

import 'components/profile_drawer.dart';
import 'components/profile_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: _appBar(),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              _buildHeaderAvatar(),
              SizedBox(width: 20),
              _buildHeaderProfile()
            ],
          ),
          Row(),
          Row(),
          ProfileTab(),
        ],
      ),
    );
  }

  Column _buildHeaderProfile() {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "GetinThere",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "프로그래머/작가/강사",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  "데어 프로그래밍",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            );
  }

  SizedBox _buildHeaderAvatar() {
    return SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/avatar.png"),
              ),
            );
  }
}

AppBar _appBar() {
  return AppBar(
    leading: Icon(Icons.arrow_back_ios),
    centerTitle: true,
    title: Text("Profile"),
  );
}


