import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Icon(Icons.directions_car),
            ),
            Tab(
              icon: Icon(Icons.directions_transit),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              GridView.builder(
                itemCount: 42,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: "https://picsum.photos/id/${index + 1}/200/200",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  );
                },
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        ),
      ],
    );
  }
}
