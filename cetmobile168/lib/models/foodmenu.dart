// ไฟล์: lib/models/foodmenu.dart

// 1. ทำตามข้อ 11(k): แก้ไข enum ให้เก็บค่า image path ได้โดยตรง
enum Foodpic {
  // กำหนด path ของรูปให้กับแต่ละเมนู
  menu1(imagePath: 'assets/images/1.png'), // ไข่กระทะ
  menu2(imagePath: 'assets/images/2.png'), // สลัด
  menu3(imagePath: 'assets/images/3.png'), // สเต็กเนื้อ
  menu4(imagePath: 'assets/images/4.png'), // สเต็กไอคอน
  menu5(imagePath: 'assets/images/5.png'), // แฮมเบอร์เกอร์
  menu6(imagePath: 'assets/images/6.png'), // พิซซ่า
  menu7(imagePath: 'assets/images/7.png'); // ก๋วยเตี๋ยว

  // เพิ่ม constructor และ final property เพื่อเก็บค่า imagePath
  const Foodpic({required this.imagePath});
  final String imagePath;
}

// 2. Class FoodMenu ยังคงเหมือนเดิม แต่เราจะใช้ foodpic ที่ฉลาดขึ้น
class FoodMenu {
  final String name;
  final String type;
  final String component;
  final int price;
  final Foodpic foodpic;

  FoodMenu({
    required this.name,
    required this.type,
    required this.component,
    required this.price,
    required this.foodpic,
  });
}

// 3. อัปเดต List ข้อมูลอาหารให้ครบ 7 อย่างตามรูป
final List<FoodMenu> emp = [
  FoodMenu(
      name: "ไข่กระทะ",
      type: "อาหารเช้า",
      component: "ไข่ดาว, กุนเชียง, หมูสับ",
      price: 89,
      foodpic: Foodpic.menu1),
  FoodMenu(
      name: "สลัดผักรวม",
      type: "สุขภาพ",
      component: "ผักร็อกเก็ต, มะเขือเทศ",
      price: 159,
      foodpic: Foodpic.menu2),
  FoodMenu(
      name: "สเต็กเนื้อริบอาย",
      type: "สเต็ก",
      component: "เนื้อริบอาย, หน่อไม้ฝรั่ง",
      price: 450,
      foodpic: Foodpic.menu3),
  FoodMenu(
      name: "ชุดสเต็กหมู",
      type: "สเต็ก",
      component: "สเต็ก, ไข่ดาว, เฟรนช์ฟรายส์",
      price: 199,
      foodpic: Foodpic.menu4),
  FoodMenu(
      name: "แฮมเบอร์เกอร์",
      type: "ฟาสฟู้ด",
      component: "ขนมปัง, เนื้อ, ชีส, ผักกาด",
      price: 129,
      foodpic: Foodpic.menu5),
  FoodMenu(
      name: "พิซซ่า",
      type: "ฟาสฟู้ด",
      component: "แป้ง, เปปเปอโรนี, ชีส",
      price: 249,
      foodpic: Foodpic.menu6),
  FoodMenu(
      name: "ราเมน",
      type: "ก๋วยเตี๋ยว",
      component: "เส้น, ไข่ต้ม, ลูกชิ้นปลา",
      price: 119,
      foodpic: Foodpic.menu7),
];