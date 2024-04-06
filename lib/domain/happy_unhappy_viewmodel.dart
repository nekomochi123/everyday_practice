import 'package:hooks_riverpod/hooks_riverpod.dart';

class RadioNotifier extends StateNotifier<int> {
  RadioNotifier() : super(0);

  String get title {
    if (state == 1) {
      return '幸せ';
    } else {
      return '不幸';
    }
  }

  void update_happy(int value) {
    state = value;
  }
}

final HappyProvider = StateNotifierProvider<RadioNotifier, int>((ref) => RadioNotifier());