// test/models/character_model_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:app_rick/models/character_model.dart';

void main() {
  test('fromJson creates a Character object from JSON', () {
    // Simula un JSON que representa un personaje
    final Map<String, dynamic> json = {
      'id': 1,
      'name': 'Rick Sanchez',
      'species': 'Human',
      'image': 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
      'status': 'Alive',
      'location': {'name': 'Citadel of Ricks'},
    };

    // Crea un Character usando el método fromJson
    final character = Character.fromJson(json);

    // Verifica que los campos del objeto Character son correctos
    expect(character.id, 1);
    expect(character.name, 'Rick Sanchez');
    expect(character.species, 'Human');
    expect(character.image, 'https://rickandmortyapi.com/api/character/avatar/1.jpeg');
    expect(character.status, 'Alive');
    expect(character.location, 'Citadel of Ricks'); // Asegúrate de que esto coincide con tu modelo
  });
}
