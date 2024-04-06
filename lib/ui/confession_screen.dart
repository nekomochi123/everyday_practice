import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/domain/happy_unhappy_viewmodel.dart';
import 'package:everyday_practice/domain/confession_viewmodel.dart';

class ConfessionScreen extends HookConsumerWidget {
  const ConfessionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final confession_value = ref.watch(ConfessionProvider);
    final title = ref.watch(HappyProvider.notifier).title;
    final confession = ref.watch(ConfessionProvider.notifier).conffesion;
    return Scaffold(
      appBar: AppBar(
        title:Text(title),
    ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('要因は？'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 1,
                  groupValue: confession_value,
                  onChanged: (value) {
                    ref.read(ConfessionProvider.notifier).update_confession(value!);
                  },
                ),
                Text('金'),
                Radio(
                  value: 2,
                  groupValue: confession_value,
                  onChanged: (value) {
                    ref.read(ConfessionProvider.notifier).update_confession(value!);
                  },
                ),
                Text('色欲'),
                Radio(
                  value: 3,
                  groupValue: confession_value,
                  onChanged: (value) {
                    ref.read(ConfessionProvider.notifier).update_confession(value!);
                  },
                ),
                Text('人間関係'),
                Radio(
                  value: 4,
                  groupValue: confession_value,
                  onChanged: (value) {
                    ref.read(ConfessionProvider.notifier).update_confession(value!);
                  },
                ),
                Text('災難'),
              ],
            ),
            SizedBox(
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
                child: const Text('回答'),
                onPressed: confession_value != 0 ? () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("あなたの回答"),
                        content: Text("私は$title。要因は$confession。"),
                        actions: [
                          TextButton(
                            child: Text("閉じる"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    },
                  );
                } : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

