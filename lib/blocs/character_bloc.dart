import 'package:flutter_bloc/flutter_bloc.dart';
import '../repositories/character_repository.dart';
import 'character_event.dart';
import 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharacterRepository characterRepository;

  CharacterBloc(this.characterRepository) : super(CharactersLoadingState()) {
    on<LoadCharactersEvent>((event, emit) async {
      emit(CharactersLoadingState());
      try {
        final characters = await characterRepository.fetchCharacters();
        emit(CharactersLoadedState(characters));
      } catch (_) {
        emit(CharactersErrorState());
      }
    });
  }
}
