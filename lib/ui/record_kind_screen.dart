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
    final selectedRecordKind = useState(recordKindsState.isNotEmpty ? recordKindsState[0].recordKind : null);
    final filteredRecords = recordKindsState.where((record) => record.recordKind == selectedRecordKind).toList();
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
      body:Column(
        children: [
          if (recordKindsState.isNotEmpty) ...[
            DropdownButton<String>(
              value: selectedRecordKind.value,
              onChanged: (newValue) {
                selectedRecordKind.value = newValue;
              },
              items: recordKindsState.map<DropdownMenuItem<String>>((RecordKind record) {
                return DropdownMenuItem<String>(
                  value: record.recordKind,
                  child: Text(record.recordKind),
                );
              }).toList(),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: filteredRecords.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${filteredRecords[index].title}(${filteredRecords[index].recordKind})'),
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 10,
                  color: Colors.orange,
                );
              },
              ),
            ),
          ]
        ],
      ),
    );
  }
}