import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConfessionRadioNotifier extends StateNotifier<int> {
  ConfessionRadioNotifier() : super(0);

  String get conffesion {
    switch(state){
      case 1:
        return '金';
      case 2:
        return '色欲';
      case 3:
        return '人間関係';
      case 4:
        return '災難';
      default:
        return 'エラー';
    }
  }
  void update_confession(int value) {
    state = value;
  }
}

final ConfessionProvider = StateNotifierProvider<ConfessionRadioNotifier, int>((ref) => ConfessionRadioNotifier());