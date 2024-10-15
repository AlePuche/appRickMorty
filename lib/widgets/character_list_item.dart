import 'package:flutter/material.dart';
import '../models/character_model.dart';
import '../screens/character_detail_screen.dart';

class CharacterListItem extends StatelessWidget {
  final Character character;

  CharacterListItem({required this.character});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(character.image),
      title: Text(character.name),
      subtitle: Text(character.species),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CharacterDetailScreen(character: character),
          ),
        );
      },
    );
  }
}
