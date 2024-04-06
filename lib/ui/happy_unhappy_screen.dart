import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/happy_unhappy_viewmodel.dart';
import 'package:everyday_practice/ui/confession_screen.dart';

class HappyUnHappyScreen extends HookConsumerWidget {
  const HappyUnHappyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final luck_value = ref.watch(HappyProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy or UnHappy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: luck_value,
                  onChanged: (value) {
                    ref.read(HappyProvider.notifier).update_happy(value!);
                  },
                ),
                Text('幸せ'),
                Radio(
                  value: 2,
                  groupValue: luck_value,
                  onChanged: (value) {
                    ref.read(HappyProvider.notifier).update_happy(value!);
                  },
                ),
                Text('不幸'),
              ],
            ),
            SizedBox(
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                child: const Text('next'),
                onPressed: luck_value != 0 ? () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfessionScreen()),
                );} : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}