import 'package:flutter/material.dart';
import 'package:flutter_profile_practice/components/profile_count_info.dart';
import 'package:flutter_profile_practice/components/profile_header.dart';
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
          SizedBox(height: 20),
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileCountInfo(),
          SizedBox(height: 20),
          ProfileTab(),
        ],
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


