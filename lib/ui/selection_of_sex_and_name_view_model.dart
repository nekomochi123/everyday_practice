import 'package:everyday_practice/domain/user_selection.dart';
import 'package:everyday_practice/foundation/utill/view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:everyday_practice/domain/user_info_sex.dart';

part 'selection_of_sex_and_name_view_model.freezed.dart';

final userInfoProvider = StateNotifierProvider<UserInfoNotifier, UserInfo>((ref) => UserInfoNotifier(UserInfo(), ref.read));

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    @Default(null) UserSelection? user_selection,
    @Default(null) SexSelection? sex_selection,
    @Default('') String name,
  }) = _UserInfo;
}

class UserInfoNotifier extends ViewModel<UserInfo> {
  UserInfoNotifier(super._state, super.read);

  void your_selection(UserSelection user_selected) {
    state = state.copyWith(user_selection: user_selected);
  }
  void sex_seleciton(SexSelection sex_selected){
    state = state.copyWith(sex_selection: sex_selected);
  }
  void name_selection(String name){
    state = state.copyWith(name: name);
  }
}
