import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/pages/resultpage.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import 'classification.dart';

String modelPath = 'assets/models/mobilenet_1_00_224.tflite';
String labelsPath = 'assets/models/labels.txt';

class PickImageCamera extends StatefulWidget {
  const PickImageCamera({super.key});

  @override
  State<PickImageCamera> createState() => _PickImageCameraState();
}

class _PickImageCameraState extends State<PickImageCamera> {
  late TFLiteModel _tfliteModel;
  // ignore: prefer_typing_uninitialized_variables
  var _confidence;
  // ignore: prefer_typing_uninitialized_variables
  var _label;
  // ignore: prefer_typing_uninitialized_variables
  var _index;
  // ignore: prefer_typing_uninitialized_variables
  var _image;
  @override
  void initState() {
    super.initState();
    _tfliteModel = TFLiteModel(
      modelPath: 'assets/models/mobilenet_1_00_224.tflite',
      labelsPath: 'assets/models/labels.txt',
    );
    _tfliteModel.loadModel(modelPath, labelsPath); // โหลดโมเดล
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      final results = await _tfliteModel.classifyImage(pickedFile);
      if (results.isNotEmpty) {
        final result = results[0];
        final index = result['index'] as int;
        var label = result['label'] as String;
        final confidence = result['confidence'] as double;
        _image = pickedFile.path;
        if (confidence > 0.9) {
          // แสดงผลลัพธ์เฉพาะหาก confidence มากกว่า 0.9
          setState(() {
            _confidence = '${(confidence * 100).toStringAsFixed(2)}%';
            _label = label;
            _index = index;

            // ignore: avoid_print
            print('Class: $_label, Index: $_index, Confidence: $_confidence');
          });
        } else {
          // แสดงข้อความ "ไม่พบสายพันธุ์แมว" เมื่อ confidence ต่ำกว่า 0.9
          // ignore: avoid_print
          print('ไม่พบสายพันธุ์แมว');
          _label = 'ไม่พบสายพันธุ์แมว';
          _confidence = 'ไม่สามารถระบุค่าความแม่นยำได้';
          _index = -1;
        }

        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                label: _label,
                confidence: _confidence,
                index: _index!,
                image: _image, // ส่งค่า Index ไปยังหน้า ResultPage
              ),
            ),
          );
        });
      } else {
        // ไม่พบผลลัพธ์
      }
    } else {
      // ยกเลิกการเลือกรูปภาพ
    }
  }

  @override
  void dispose() {
    // ทำลายโมเดลเมื่อแอปพลิเคชันถูกปิดลง
    _tfliteModel.disposeModel();
    super.dispose();
  }

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
                    'assets/images/cat_foot.png',
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
