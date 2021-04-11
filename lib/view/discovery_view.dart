import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:social_ui_pesa/model/user_model.dart';
import 'package:social_ui_pesa/widget/build_profile.dart';
import 'package:social_ui_pesa/widget/item_widget.dart';

class DiscoveryView extends StatefulWidget {
  @override
  _DiscoveryViewState createState() => _DiscoveryViewState();
}

class _DiscoveryViewState extends State<DiscoveryView> {
  final panelController = PanelController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.person_outline), onPressed: () {}),
        actions: [
          IconButton(icon: Icon(Icons.close), onPressed: () {}),
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 400,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: panelController,
        color: Colors.transparent,
        body: PageView.builder(
          itemBuilder: (context, index) {
            return Image.network(
              user[index].urlImage,
              fit: BoxFit.cover,
            );
          },
          itemCount: user.length,
          onPageChanged: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
        panelBuilder: (ScrollController scroll) {
          return Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemWidget(
                      title: 'Followers',
                      count: user[index].countFollowers,
                    ),
                    ItemWidget(
                      title: 'Posts',
                      count: user[index].countPosts,
                    ),
                    ItemWidget(
                      title: 'Following',
                      count: user[index].countFollowing,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      BuildProfile(
                        user: user[index],
                        onPressed: () {
                          setState(() {
                            user[index].isFollowing = !user[index].isFollowing;
                          });
                        },
                      ),
                      Expanded(
                        child: buildProfileDetails(user[index]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        backgroundColor: Colors.tealAccent,
        items: [
          Icon(
            Icons.map,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.people,
            size: 30,
          ),
        ],
      ),
    );
  }

  buildProfileDetails(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.bio,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          SizedBox(height: 12),
          Text(
            'Photo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: user.urlPhotos
                  .map(
                    (url) => Container(
                      height: 100,
                      width: 100,
                      padding: EdgeInsets.only(right: 5),
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
