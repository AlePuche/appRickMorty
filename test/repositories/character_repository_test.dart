import 'package:flutter_test/flutter_test.dart';
import 'package:app_rick/repositories/character_repository.dart';


void main() {

  TestWidgetsFlutterBinding.ensureInitialized();

  late CharacterRepository characterRepository;

  setUp(() {
    characterRepository = CharacterRepository();
  });

  test('loadLocalCharacters returns a list of characters from local JSON', () async {

    final characters = await characterRepository.loadLocalCharacters();


    expect(characters.length, 2);


    expect(characters[0].id, 1);
    expect(characters[0].name, 'Rick Sanchez');
    expect(characters[0].species, 'Human');
    expect(characters[0].status, 'Alive');
    expect(characters[0].location, 'Citadel of Ricks');
    expect(characters[0].image, 'test/assets/1.jpeg');

    expect(characters[1].id, 2);
    expect(characters[1].name, 'Morty Smith');
    expect(characters[1].species, 'Human');
    expect(characters[1].status, 'Alive');
    expect(characters[1].location, 'Earth');
    expect(characters[1].image, 'test/assets/2.jpeg');
  });
}
