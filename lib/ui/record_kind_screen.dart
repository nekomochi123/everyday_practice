import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:everyday_practice/ui/record_kind_view_model.dart';

import '../domain/record_kind.dart';

class RecordKindScreen extends HookConsumerWidget {
  const RecordKindScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recordKindsState = ref.watch(recordKindStateProvider.select((v) => v.recordKinds));
    final records = ref.watch(recordKindStateProvider.select((v) => v.records));

    useEffect(() {
      ref.read(recordKindStateProvider.notifier).loadRecord();
      return null;
    }, []);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'フィルタ付き一覧表示',
        ),
      ),
      body: ListView.separated(
        itemCount: records.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              '${recordKindsState[index].title}(${recordKindsState[index].recordKind})',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 10,
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
