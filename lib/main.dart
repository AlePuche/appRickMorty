import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'repositories/character_repository.dart';
import 'screens/character_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CharacterRepository()),
      ],
      child: MaterialApp(
        title: 'Rick and Morty App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CharacterListScreen(),
      ),
    );
  }
}