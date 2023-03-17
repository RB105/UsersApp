import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:users/data/model/user_model.dart';

class InfoPage extends StatelessWidget {
  final UserModel user;
  const InfoPage({super.key,required this.user});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}