import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HappyUnHappyScreen extends HookConsumerWidget {
  const HappyUnHappyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
