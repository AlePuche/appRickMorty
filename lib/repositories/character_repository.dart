import 'package:dio/dio.dart';
import '../models/character_model.dart';

class CharacterRepository {
  final Dio dio = Dio();
  final String apiUrl = 'https://rickandmortyapi.com/api/character';

  Future<List<Character>> fetchCharacters() async {
    try {
      final response = await dio.get(apiUrl);
      final List results = response.data['results'];
      return results.take(20).map((json) => Character.fromJson(json)).toList();
    } catch (e) {
      throw Exception('Failed to load characters');
    }
  }
}
