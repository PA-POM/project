import 'package:classifly_cat/constants.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageCamera extends StatelessWidget {
  const PickImageCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Material(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Cat Breeds Classify ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      height: 1.20,
                      fontWeight: FontWeight.w600,
                      fontSize: 35,
                      color: Black)),
              Text('การจำแนกสายพันธุ์แมว',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      height: 1.20,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Black)),
              const SizedBox(
                height: 20,
              ),
              Material(
                  child: Column(
                children: [
                  Image.asset(
                    'image/cat_foot.png',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              )),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Yellowbrown),
                  minimumSize: MaterialStateProperty.all(
                      const Size(200, 50)), // กำหนดขนาดของปุ่ม
                ),
                onPressed: () {
                  _pickImage(ImageSource.camera); // เปิดกล้อง
                },
                child: Text('ถ่ายรูป',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: White)),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Yellowbrown),
                  minimumSize: MaterialStateProperty.all(
                      const Size(200, 50)), // กำหนดขนาดของปุ่ม
                ),
                onPressed: () {
                  _pickImage(ImageSource.gallery); // เปิดแกลเลอรี
                },
                child: Text(
                  'แกลเลอรี',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold, color: White),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

Future<void> _pickImage(ImageSource source) async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: source);

  if (pickedFile != null) {
    // ใช้รูปภาพที่เลือก (File) ตามที่ต้องการ
    // คุณสามารถแสดงรูปในวิดเจ็ต Image, อัปโหลดไปยังเซิร์ฟเวอร์ เป็นต้น
  } else {
    // ผู้ใช้ยกเลิกการเลือกรูปภาพ
  }
}
