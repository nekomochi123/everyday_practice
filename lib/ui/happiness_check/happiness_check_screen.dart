import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class HappinessScreen extends HookConsumerWidget {
  const HappinessScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  value: 1,
                  groupValue: null,
                  onChanged: (value) {
                  },
                ),
                Text('幸せ'),
                Radio(
                  value: 2,
                  groupValue: null,
                  onChanged: (value) {
                  },
                ),
                Text('不幸'),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('選択'),
                )
            ),
          ],
        )
    );
  }
}
