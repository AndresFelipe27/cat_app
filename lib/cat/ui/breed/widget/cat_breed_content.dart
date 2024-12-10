import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../breed_webview_screen.dart';
import '../../../domain/model/cat_breed.dart';
import 'cat_breed_dropdown.dart';

class CatBreedContent extends ConsumerWidget {
  const CatBreedContent({
    required this.breeds,
    required this.selectedBreed,
    required this.onBreedSelected,
    super.key,
  });

  final List<CatBreed> breeds;
  final CatBreed selectedBreed;
  final Function(String) onBreedSelected;
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CatBreedDropdown(
              breeds: breeds,
              selectedBreed: selectedBreed,
              onBreedSelected: onBreedSelected,
            ),
            selectedBreed.images.isEmpty
              ? const Text('No hay imágenes disponibles')
              : CarouselSlider.builder(
                itemCount: selectedBreed.images.length,
                itemBuilder: (context, index, realIdx) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.network(
                            selectedBreed.images[index].url ?? '',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 500,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 250.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selectedBreed.name ?? 'Unknown Breed',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Origin: ${selectedBreed.origin ?? 'Unknown'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Life Span: ${selectedBreed.lifeSpan ?? 'Unknown'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Intelligence: ${selectedBreed.intelligence ?? 'Unknown'}",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Description: ${selectedBreed.description ?? 'No description available.'}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "More Info:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BreedWebViewScreen(
                            url: selectedBreed.wikipediaUrl!,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      selectedBreed.wikipediaUrl ?? 'No Wikipedia URL available',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
