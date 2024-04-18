import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/go_practice_controller.dart';

class GoPracticeScreen extends HookConsumerWidget {
  const GoPracticeScreen({
    super.key,
  });

  static const routePath = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsyncValue = ref.watch(goPracticeControllerProvider.select((value) => value.users));
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'api取得',
        ),
      ),
      body: usersAsyncValue.when(
        data: (users) {
          if (users == null || users.isEmpty) {
            return const Center(child: Text('No data'));
          }
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
                return ListTile(
                  title: Text(user.title ?? ''),
                  subtitle: Text(user.kind?.toString() ?? ''),
                );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, s) => const Center(child: Text('An error occurred')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(goPracticeControllerProvider.notifier).fetchUsers(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}