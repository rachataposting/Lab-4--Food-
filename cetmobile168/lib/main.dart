// ไฟล์: lib/main.dart

import 'package:flutter/material.dart';
// import 'screen/home.dart'; // บรรทัดนี้จะถูกปิดไป ไม่ได้ใช้แล้ว
import 'screen/item.dart';   // เราจะ import ไฟล์ใหม่ที่เรากำลังจะสร้าง

void main() {
  runApp(const MyApp());
}

// ย้าย MaterialApp มาไว้ใน Widget ใหม่ชื่อ MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CET App ID:168"),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: const Item(),      // เป็น Item() ที่เป็นหน้าจอใหม่
      ),
    );
  }
}