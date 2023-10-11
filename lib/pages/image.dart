import 'package:classifly_cat/pages/resultpage.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import '../constants.dart';
import '../classification/classification.dart';

String modelPath = '';
String labelsPath = 'assets/models/labels.txt';

class PickImageCamera extends StatefulWidget {
  const PickImageCamera({super.key});

  @override
  State<PickImageCamera> createState() => _PickImageCameraState();
}

class _PickImageCameraState extends State<PickImageCamera> {
  late TFLiteModel _tfliteModel;
  String _confidence = '';
  String _label = '';
  int _index = 0;
  String _image = '';
  String _modelname = 'MobileNet';

  // รายการโมเดลที่เลือกใน Dropdown
  final List<String> _modelOptions = ['MobileNet', 'InceptionV3'];
  String _selectedModel = 'MobileNet';

  @override
  void initState() {
    super.initState();
    modelPath = 'assets/models/mobilenet_1_00_224.tflite';
    _tfliteModel = TFLiteModel(
      modelPath: modelPath,
      labelsPath: labelsPath,
    );
    _tfliteModel.loadModel(modelPath, labelsPath);
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
        if (confidence > 0.8) {
          setState(() {
            _confidence = '${(confidence * 100).toStringAsFixed(2)}%';
            _label = label;
            _index = index;

            // ignore: avoid_print
            print('Class: $_label, Index: $_index, Confidence: $_confidence');
          });
        } else {
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
                index: _index,
                image: _image,
                selectedModel: _modelname,
              ),
            ),
          );
        });
      }
    }
  }

  @override
  void dispose() {
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
                const Text(
                  'Cat Breeds Classification ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 31,
                      color: Black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Kanit'),
                ),
                const Text(
                  'การจำแนกสายพันธุ์แมว',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      color: Black,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Kanit'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'เลือกโมเดล',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 18,
                      color: Black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Kanit'),
                ),
                const SizedBox(
                  height: 1.5,
                ),
                // Dropdown สำหรับเลือกโมเดล
                DropdownButton<String>(
                  iconEnabledColor: Yellowbrown,
                  dropdownColor: Yellowbrown,
                  value: _selectedModel,
                  onChanged: (String? newValue) {
                    _tfliteModel.disposeModel();
                    setState(() {
                      _selectedModel = newValue!;
                      // อัปเดต modelPath ตามที่เลือกใน Dropdown
                      if (_selectedModel == 'MobileNet') {
                        modelPath = 'assets/models/mobilenet_1_00_224.tflite';
                        _modelname = 'MobileNet';
                      } else if (_selectedModel == 'InceptionV3') {
                        modelPath = 'assets/models/inceptionv3.tflite';
                        _modelname = 'InceptionV3';
                      }
                      // โหลดโมเดลใหม่

                      _tfliteModel.loadModel(modelPath, labelsPath);
                    });
                  },
                  items: _modelOptions.map((String model) {
                    return DropdownMenuItem<String>(
                      value: model,
                      child: Text(
                        model,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Kanit'),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/questioncat.png',
                        width: 250,
                        height: 250,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    _showPopup(context);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'เลือกรูปภาพ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Black,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Kanit'),
                      ),
                      Icon(
                        Icons.info_rounded,
                        color: Black,
                      ),
                    ],
                  ), // ใช้ไอคอนตามที่คุณต้องการ
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Yellowbrown),
                            minimumSize:
                                MaterialStateProperty.all(const Size(150, 50)),
                          ),
                          onPressed: () {
                            _pickImage(ImageSource.camera);
                          },
                          child: const Text(
                            'ถ่ายรูป',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: White,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Kanit'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Yellowbrown),
                            minimumSize:
                                MaterialStateProperty.all(const Size(150, 50)),
                          ),
                          onPressed: () {
                            _pickImage(ImageSource.gallery);
                          },
                          child: const Text(
                            'แกลเลอรี',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                color: White,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Kanit'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          width:
              MediaQuery.of(context).size.width * 0.7, // กำหนดขนาดกว้างของสไลด์
          height:
              MediaQuery.of(context).size.height * 0.51, // กำหนดขนาดสูงของสไลด์
          child: ListView(
            children: <Widget>[
              // เพิ่มสไลด์ 3 รายการ
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'รูปแบบรูปภาพที่ควรนำมาใช้',
                    style: TextStyle(
                        fontSize: 18,
                        color: Black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Kanit'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/cat.png',
                    fit: BoxFit.cover,
                    height: 150, // กำหนดความสูงของรูปภาพ
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'รูปแบบรูปภาพที่ไม่ควรนำมาใช้',
                    style: TextStyle(
                        fontSize: 18,
                        color: Black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Kanit'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    'assets/images/cat.png',
                    fit: BoxFit.cover,
                    height: 150, // กำหนดความสูงของรูปภาพ
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // ปิดป็อบอัพ
            },
            child: const Text(
              'ปิดหน้าต่าง',
              style: TextStyle(
                  fontSize: 18,
                  color: Yellowbrown,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Kanit'),
            ),
          ),
        ],
      );
    },
  );
}
