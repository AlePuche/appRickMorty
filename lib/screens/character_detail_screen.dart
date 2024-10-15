import 'package:flutter/material.dart';
import '../models/character_model.dart';

class CharacterDetailScreen extends StatelessWidget {
  final Character character;

  CharacterDetailScreen({required this.character});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(character.image),
            SizedBox(height: 16),
            Text('Name: ${character.name}', style: TextStyle(fontSize: 20)),
            Text('Species: ${character.species}', style: TextStyle(fontSize: 18)),
            Text('Status: ${character.status}', style: TextStyle(fontSize: 18)),
            Text('Location: ${character.location}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

