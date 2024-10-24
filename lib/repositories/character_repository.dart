import 'package:dio/dio.dart';
import '../models/character_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

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

  // Método para cargar personajes desde un archivo JSON local
  Future<List<Character>> loadLocalCharacters() async {
    final String responseString = await rootBundle.loadString('test/assets/mock_characters.json');
    final Map<String, dynamic> responseJson = jsonDecode(responseString);
    final List results = responseJson['results'];
    return results.map((json) => Character.fromJson(json)).toList();
  }
}
