import 'package:freezed_annotation/freezed_annotation.dart';

part 'go_practice_repository.freezed.dart';
part 'go_practice_repository.g.dart';

@freezed
class GoPracticeRepository with _$GoPracticeRepository {
  const factory GoPracticeRepository({
    required int id,
    required String title,
    required String kind,
  }) = _GoPracticeRepository;

  factory GoPracticeRepository.fromJson(Map<String, dynamic> json) =>
      _$GoPracticeRepositoryFromJson(json);
}
