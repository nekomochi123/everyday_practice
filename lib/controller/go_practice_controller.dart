import 'dart:io';

import 'package:everyday_practice/repository/go_practice_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/foundation/utill/reader.dart';
import 'package:everyday_practice/repository/go_practice_repository.dart';

part 'go_practice_controller.freezed.dart';

final goPracticeControllerProvider = StateNotifierProvider.autoDispose<GoPracticeController, GoPracticeState>(
  (ref) => GoPracticeController(ref.read, GoPracticeRepositoryStateNotifier(const GoPracticeRepository())),
);

@freezed
class GoPracticeState with _$GoPracticeState {
  const factory GoPracticeState({
    @Default(AsyncValue.data(null)) AsyncValue<List<GoPracticeRepository>?> users,
  }) = _GoPracticeState;
}

class GoPracticeController extends StateNotifier<GoPracticeState> {
  final Reader _read;
  final GoPracticeRepositoryStateNotifier _repositoryStateNotifier;

  GoPracticeController(this._read, this._repositoryStateNotifier) : super(const GoPracticeState());

  Future<void> fetchUsers() async {
    state = state.copyWith(users: const AsyncValue.loading());
    try {
      final user = await _repositoryStateNotifier.fetchJson();

      if (user != null) {
        state = state.copyWith(users: AsyncValue.data(user));
      } else {
        return;
      }
    } catch (e, s) {
      state = state.copyWith(users: AsyncValue.error(e, s));
    }
  }
}
