import 'package:flutter/material.dart';
import 'package:users/core/routes/router.dart';
import 'package:users/data/service/local/notification_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.router.onGenerate,
      initialRoute: '/',
    );
  }
}
