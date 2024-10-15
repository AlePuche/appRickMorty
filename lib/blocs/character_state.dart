import '../models/character_model.dart';

abstract class CharacterState {}

class CharactersLoadingState extends CharacterState {}

class CharactersLoadedState extends CharacterState {
  final List<Character> characters;

  CharactersLoadedState(this.characters);
}

class CharactersErrorState extends CharacterState {}
