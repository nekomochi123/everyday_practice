import 'package:hooks_riverpod/hooks_riverpod.dart';

class RadioNotifier extends StateNotifier<int> {
  RadioNotifier() : super(0);

  void update_happy(int value) {
    state = value;
  }
}

final HappyProvider = StateNotifierProvider<RadioNotifier, int>((ref) => RadioNotifier());