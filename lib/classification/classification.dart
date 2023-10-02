import 'package:flutter_tflite/flutter_tflite.dart';

import 'package:image_picker/image_picker.dart';

class TFLiteModel {
  TFLiteModel({required String modelPath, required String labelsPath});

  Future<void> loadModel(String modelPath, String labelsPath) async {
    try {
      await Tflite.loadModel(
        model: modelPath,
        labels: labelsPath,
      );
    } catch (e) {
      // ignore: avoid_print
      print('Error loading model: $e');
    }
  }

  Future<List<Map<String, dynamic>>> classifyImage(XFile image) async {
    try {
      final output = await Tflite.runModelOnImage(
        path: image.path,
        imageMean: 127.5,
        imageStd: 127.5,
        numResults: 5,
        threshold: 0.001,
      );

      if (output != null && output.isNotEmpty) {
        return output.map<Map<String, dynamic>>((item) {
          final index = item['index'] as int;
          final label = item['label'] as String;
          final confidence = item['confidence'] as double;
          final Map<String, dynamic> result = {
            'index': index,
            'label': label,
            'confidence': confidence,
          };
          return result;
        }).toList();
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error classifying image: $e');
    }

    return [];
  }

  Future<void> disposeModel() async {
    try {
      await Tflite.close();
    } catch (e) {
      // ignore: avoid_print
      print('Error closing model: $e');
    }
  }
}
