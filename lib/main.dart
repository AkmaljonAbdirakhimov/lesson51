import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lesson51/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Hello World",
      debugShowCheckedModeBanner: false,
      home: CoursesScreen(),
    );
  }
}

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  void getCourses() async {
    Uri url = Uri.parse(
        "https://lesson50-efebe-default-rtdb.asia-southeast1.firebasedatabase.app/courses.json");

    final response = await http.get(url);
    final data = jsonDecode(response.body);

    print("COURSES");
    data.forEach((key, value) {
      print(key);
      getLessonsByCourse(key);
    });
  }

  void getLessonById(String id) async {
    Uri url = Uri.parse(
        "https://lesson50-efebe-default-rtdb.asia-southeast1.firebasedatabase.app/lessons/$id.json");

    final response = await http.get(url);
    final data = jsonDecode(response.body);

    print("LESSON");
    print(data);
  }

  void getLessonsByCourse(String courseId) async {
    Uri url = Uri.parse(
        'https://lesson50-efebe-default-rtdb.asia-southeast1.firebasedatabase.app/lessons.json?orderBy="courseId"&equalTo="$courseId"');

    final response = await http.get(url);
    final data = jsonDecode(response.body);

    print("$courseId: LESSONS");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    getCourses();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ListTile();
        },
      ),
    );
  }
}
