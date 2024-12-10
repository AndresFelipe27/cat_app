import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/cat_breed_provider.dart';
import 'widget/cat_breed_content.dart';

class CatBreedScreen extends ConsumerWidget {
  const CatBreedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(catBreedStateProvider);
    final controller = ref.watch(catBreedStateProvider.notifier);

    if (state.loading) {
      return const CircularProgressIndicator();
    }

    if (state.error != null) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          textAlign: TextAlign.center,
          'No podimos procesar la solicitud, por favor intentalo más tarde',
        ),
      );
    }

    return CatBreedContent(
      breeds: state.breeds,
      selectedBreed: state.selectedBreed,
      onBreedSelected: controller.onBreedSelected,
    );
  }
}


