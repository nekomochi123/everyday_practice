import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:everyday_practice/domain/record_kind.dart';

Future<List<RecordKind>> loadRecordKinds() async {
  String jsonString = await rootBundle.loadString('assets/food_kind.json');
  List<dynamic> json = jsonDecode(jsonString);
  return json.map((item) => RecordKind.fromJson(item)).toList();
}

