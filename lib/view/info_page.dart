import 'package:flutter/material.dart';
import 'package:users/data/model/user_model.dart';

class InfoPage extends StatelessWidget {
  final UserModel user;
  const InfoPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name.toString()),
        centerTitle: true,
      ),
    );
  }
}
