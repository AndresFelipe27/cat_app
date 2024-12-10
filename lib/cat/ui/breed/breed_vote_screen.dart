import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../provider/cat_breed_provider.dart';

class BreedVoteScreen extends ConsumerWidget {
  const BreedVoteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = PageController();
    final state = ref.watch(catBreedStateProvider);
    final controller = ref.watch(catBreedStateProvider.notifier);
    final breedsWithImage = controller.getBreedsWithImageNoNull();

    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: breedsWithImage.length,
      physics: const ClampingScrollPhysics(),
      onPageChanged: (int index) {
        if (pageController.position.userScrollDirection == ScrollDirection.reverse) {
          controller.updateBreedPage();
          pageController.animateToPage(
            state.breedPage + 1,
            curve: Curves.ease,
            duration: const Duration(seconds: 1),
          );
        } else {
          pageController.animateToPage(
            state.breedPage,
            curve: Curves.ease,
            duration: const Duration(seconds: 1),
          );
        }
      },
      itemBuilder: (context, index) {
        final breed = breedsWithImage[index];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                width: 250,
                height: 250,
                breed.referenceImageUrl!,
              ),
              const SizedBox(height: 10),
              Text(
                breed.name ?? 'Unknown',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  breed.description ?? 'Unknown',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => controller.voteBreed(true, index),
                    child: Image.asset(
                      'assets/images/me-gusta.png',
                      width: 40,
                      height: 40,
                      color: Colors.green,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.voteBreed(false, index),
                    child: Image.asset(
                      'assets/images/no-me-gusta.png',
                      width: 40,
                      height: 40,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
