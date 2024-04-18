import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:everyday_practice/foundation/utill/viewmodel.dart';

part 'go_practice_repository.freezed.dart';

part 'go_practice_repository.g.dart';

@freezed
class GoPracticeRepository with _$GoPracticeRepository {
  const factory GoPracticeRepository({
    @Default(0) int? id,
    @Default('') String? title,
    @Default(0) int? kind,
  }) = _GoPracticeRepository;

  factory GoPracticeRepository.fromJson(Map<String, dynamic> json) => _$GoPracticeRepositoryFromJson(json);
}

class GoPracticeRepositoryStateNotifier extends StateNotifier<GoPracticeRepository> {
  GoPracticeRepositoryStateNotifier(super.state);

  Future<List<GoPracticeRepository>?> fetchJson() async {
    final url = Uri.parse('http://10.0.2.2:8080/toilet/v1');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final Map<String, dynamic> body = jsonDecode(response.body);
        final List<dynamic> dataList = body['data'];
        final List<GoPracticeRepository> results = dataList.map((dynamic item) => GoPracticeRepository.fromJson(item)).toList();
        print('www');
        return results;
      } else {
        return null;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
