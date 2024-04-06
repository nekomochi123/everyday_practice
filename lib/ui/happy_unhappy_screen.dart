import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/happy_unhappy_viewmodel.dart';

class HappyUnHappyScreen extends HookConsumerWidget {
  const HappyUnHappyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radio_happy = ref.watch(happyProvider);
    final radio_unhappy = ref.watch(unhappyProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Happy or UnHappy'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(value: 0,
                    groupValue:null,
                    onChanged: null),
                Text('幸せ'),
                Radio(value: 1,
                    groupValue:null,
                    onChanged: null),
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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
