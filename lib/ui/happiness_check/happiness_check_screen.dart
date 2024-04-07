import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HappinessCheckScreen extends HookConsumerWidget {
  const HappinessCheckScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Are you happy?'),
      ),
      // body: ListView.builder(
      //   itemCount: sampleList.length,
      //   itemBuilder: (_, index) {
      //     final sampleItem = sampleList[index];
      //     return RadioListTile(
      //       title: Text(sampleItem),
      //       value: index,
      //       groupValue: selectedIndex.value,
      //       onChanged: (int? value) {
      //         selectedIndex.value = index;
      //       },
      //     );
      //   },
      // ),
    );
  }
}
