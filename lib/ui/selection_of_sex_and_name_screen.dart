import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/selection_of_sex_and_name_view_model.dart';
import 'package:everyday_practice/domain/user_info_sex.dart';
import 'package:everyday_practice/domain/user_selection.dart';

class SelectionYourInfoScreen extends HookConsumerWidget {
  const SelectionYourInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user_selected = ref.watch(userInfoProvider.select((state) => state.user_selection));
    final sex_selected = ref.watch(userInfoProvider.select((state) => state.sex_selection));
    final input_name = ref.watch(userInfoProvider.select((state) => state.name));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Who Are you?'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('選択してください'),
              DropdownButton<UserSelection>(
                value: user_selected,
                items: UserSelection.values.map((UserSelection value) {
                  return DropdownMenuItem<UserSelection>(
                    value: value,
                    child: Text(value.jp),
                  );
                }).toList(),
                onChanged: (UserSelection? value) {
                  ref.read(userInfoProvider.notifier).your_selection(value!);
                },
              ),
              if (user_selected == UserSelection.sex) ...{
                Text('性別を選択してください'),
                RadioListTile(
                    title: Text(SexSelection.male.jp),
                    value: SexSelection.male,
                    groupValue: sex_selected,
                    onChanged: (SexSelection? value) {
                      ref.read(userInfoProvider.notifier).sex_seleciton(value!);
                    }),
                RadioListTile(
                    title: Text(SexSelection.female.jp),
                    value: SexSelection.female,
                    groupValue: sex_selected,
                    onChanged: (SexSelection? value) {
                      ref.read(userInfoProvider.notifier).sex_seleciton(value!);
                    }),
                RadioListTile(
                    title: Text(SexSelection.other.jp),
                    value: SexSelection.other,
                    groupValue: sex_selected,
                    onChanged: (SexSelection? value) {
                      ref.read(userInfoProvider.notifier).sex_seleciton(value!);
                    }),
              } else if (user_selected == UserSelection.name) ...{
                const Text('名前を入力してください。'),
                TextField(
                  enabled: true,
                  onChanged: (String value) {
                    ref.read(userInfoProvider.notifier).name_selection(value);
                  },
                )
              },
              SizedBox(
                width: 100,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: (user_selected != null && (sex_selected != null || input_name.isNotEmpty)) ? Colors.deepOrangeAccent : Colors.grey,
                  ),
                  child: const Text('完了'),
                  onPressed: (user_selected != null && (sex_selected != null || input_name.isNotEmpty))
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("あなたの選択"),
                                content: Text("title: ${user_selected.jp}\n content: ${(user_selected == UserSelection.sex) ? sex_selected?.jp : input_name}"),
                                actions: [
                                  TextButton(
                                    child: Text("閉じる"),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
