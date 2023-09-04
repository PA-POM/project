import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickImageGallery extends StatelessWidget {
  const PickImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _pickImage(ImageSource.gallery); // เปิดแกลเลอรี
      },
      child: Text('เลือกรูปภาพจากแกลเลอรี'),
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
