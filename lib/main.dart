import 'package:flutter/material.dart';
import 'scaffold.dart'; // ชื่อไฟล์ของหน้า MyWidget ที่คุณสร้าง

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(title: 'Traffic Light Animation'),
    );
  }
}
