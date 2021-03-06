import 'package:flutter/material.dart';
import 'package:social_ui_pesa/model/user_model.dart';

class BuildProfile extends StatefulWidget {
  final UserModel user;
  final Function onPressed;

  BuildProfile({this.user,this.onPressed});

  @override
  _BuildProfileState createState() => _BuildProfileState();
}

class _BuildProfileState extends State<BuildProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildUser(widget.user)),
                _followButton(widget.user),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildUser(UserModel user) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user.name,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Text(user.location),
      ],
    );
  }

  _followButton(UserModel user) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
        width: user.isFollowing ? 50 : 120,
        height: 50,
        child: user.isFollowing ? buildUnFollow() : buildFollow(),
      ),
    );
  }

  buildFollow() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        border: Border.all(color: Colors.tealAccent,width: 2.5),
      ),
      child: Center(
        child: FittedBox(
          child: Text(
            'Follow',
            style: TextStyle(
                color: Colors.tealAccent,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  buildUnFollow() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.teal,
      ),
      child: Icon(
        Icons.people,
        color: Colors.white,
      ),
    );
  }
}
