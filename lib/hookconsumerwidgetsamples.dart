import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final appNameProvider = Provider((ref) => 'Special App!');

class HookConsumerPage extends HookConsumerWidget {
  const HookConsumerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final String value = ref.watch(appNameProvider);

    final counter = useState(0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Example')),
        body: Center(

          child: Text('$value, ${counter.value}'),
        ),
      ),
    );
  }
}