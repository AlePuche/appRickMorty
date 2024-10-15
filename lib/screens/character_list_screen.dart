import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/character_bloc.dart';
import '../blocs/character_state.dart';
import '../blocs/character_event.dart';
import '../widgets/character_list_item.dart';

class CharacterListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rick and Morty Characters'),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(RepositoryProvider.of(context))..add(LoadCharactersEvent()),
        child: BlocBuilder<CharacterBloc, CharacterState>(
          builder: (context, state) {
            if (state is CharactersLoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is CharactersLoadedState) {
              return ListView.builder(
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  return CharacterListItem(character: state.characters[index]);
                },
              );
            } else if (state is CharactersErrorState) {
              return Center(child: Text('Failed to load characters'));
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
