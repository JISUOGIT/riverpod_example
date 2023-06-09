import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/layout/default_layout.dart';
import 'package:riverpod_example/riverpod/stream_provider.dart';

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(multipleStreamProvider);

    return DefaultLayout(
        title: 'StreamProviderScreen',
        body: state.when(
          data: (data) => Text(data.toString()),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => Center(child: CircularProgressIndicator()),
        ));
  }
}
