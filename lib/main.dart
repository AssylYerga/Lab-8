import 'package:flutter/material.dart';
import 'package:flutter_application_1/post/bloc/post_bloc.dart';
import 'package:flutter_application_1/post/pages/post_screen.dart';
import 'package:flutter_application_1/profile/pages/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc()..add(GetPostEvent()),
      child: MaterialApp(home: ProfilePage()),
    );
  }
}
