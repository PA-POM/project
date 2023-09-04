import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageCamera extends StatelessWidget {
  const PickImageCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _pickImage(ImageSource.camera); // เปิดกล้อง
      },
      child: Text('ถ่ายรูป'),
    );
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
