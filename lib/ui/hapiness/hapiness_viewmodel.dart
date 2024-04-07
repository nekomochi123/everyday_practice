import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/happiness_kind.dart';
part 'hapiness_viewmodel.freezed.dart';

final HappinessDataProvider = StateNotifierProvider<HappinessDataNotifier, HappinessData>((ref) {
  return HappinessDataNotifier();
});

@freezed
class HappinessData with _$HappinessData {
  const factory HappinessData({
    @Default(null) HappinessKind? happiness,
  }) = _HappinessData;
}

class HappinessDataNotifier extends StateNotifier<HappinessData> {
  HappinessDataNotifier() : super(const HappinessData());

  void changehappiness(HappinessKind? condition) {
    state = state.copyWith(happiness: condition);
  }
}
