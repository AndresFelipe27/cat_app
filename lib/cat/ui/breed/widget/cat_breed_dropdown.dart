import 'package:flutter/material.dart';

import '../../../domain/model/cat_breed.dart';

class CatBreedDropdown extends StatelessWidget {
  const CatBreedDropdown({
    required this.breeds,
    required this.selectedBreed,
    required this.onBreedSelected,
    super.key,
  });

  final List<CatBreed> breeds;
  final CatBreed selectedBreed;
  final Function(String) onBreedSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.pinkAccent, width: 2),
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: const Text(
                'Seleccione una opción',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: selectedBreed.id,
              items: breeds.map((item) {
                return DropdownMenuItem<String>(
                  value: item.id,
                  child: Text(
                    item.name ?? 'Unknown',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (value) => onBreedSelected(value!),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.pinkAccent,
                size: 30,
              ),
              dropdownColor: Colors.pink[50],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
