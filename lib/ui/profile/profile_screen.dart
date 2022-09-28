import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'SAVE',
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amberAccent,
            child: CircleAvatar(
              radius: 50,
            ),
          )
        ],
      ),
    );
  }
}
