import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/happiness_kind.dart';
import 'package:everyday_practice/ui/hapiness/hapiness_viewmodel.dart';

class HappinessScreen extends HookConsumerWidget {
  const HappinessScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final happiness_value = ref.watch(HappinessDataProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Are you happy?'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('あなたは幸せですか？不幸ですか？'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: HappinessKind.luck,
                  groupValue: happiness_value,
                  onChanged: (value) {
                    ref.read(HappinessDataProvider.notifier).changehappiness(value);
                  },
                ),
                Text(HappinessKind.luck.condition),
                Radio(
                  value: HappinessKind.unluck.condition,
                  groupValue: happiness_value,
                  onChanged: (value) {
                    ref.read(HappinessDataProvider.notifier).changehappiness(value);
                  },
                ),
                Text(HappinessKind.unluck.condition),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('選択'),
                )),
          ],
        ));
  }
}
