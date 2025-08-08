// ไฟล์: lib/screen/item.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // import Google Fonts
import '../models/foodmenu.dart'; // import โมเดลข้อมูล

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  // ฟังก์ชันสำหรับเลือกสี Card ตามประเภทอาหาร
  Color _getColorForFoodType(String type) {
    switch (type) {
      case 'สุขภาพ':
        return Colors.green.shade200;
      case 'สเต็ก':
        return Colors.brown.shade300;
      case 'ฟาสฟู้ด':
        return Colors.orange.shade300;
      case 'ก๋วยเตี๋ยว':
        return Colors.red.shade200;
      case 'อาหารเช้า':
        return Colors.blue.shade200;
      default:
        return Colors.grey.shade300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: emp.length,
      itemBuilder: (context, index) {
        // ดึงข้อมูลอาหาร 1 รายการ
        final foodItem = emp[index];
        // เรียกใช้ฟังก์ชันเพื่อเลือกสี
        final cardColor = _getColorForFoodType(foodItem.type);

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          elevation: 6,
          color: cardColor, // << กำหนดสีพื้นหลังของ Card ที่นี่
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodItem.name,
                        // ใช้ GoogleFonts และเปลี่ยนสีข้อความให้ตัดกับพื้นหลัง
                        style: GoogleFonts.kanit(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        foodItem.component,
                        style: GoogleFonts.itim(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${foodItem.price} บาท",
                        style: GoogleFonts.kanit(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    // ทำตามข้อ 11(k): เรียกใช้ path จาก enum โดยตรง
                    foodItem.foodpic.imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}