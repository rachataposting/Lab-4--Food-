// ไฟล์: lib/screen/home.dart

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // --- TextButton (ปุ่มเดิม) ---
          TextButton(
            onPressed: () {
              print("Button Click");
            },
            child: const Text(
              "Click",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10), // เพิ่มระยะห่าง

          // --- FilledButton ---
          FilledButton(
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10), // เพิ่มระยะห่าง

          // --- OutlinedButton ---
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 10), // เพิ่มระยะห่าง

          // --- ElevatedButton ---
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Click",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}