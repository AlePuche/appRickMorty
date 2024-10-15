import 'package:equatable/equatable.dart';

// Clase abstracta base para los eventos
abstract class CharacterEvent extends Equatable {
  const CharacterEvent();

  @override
  List<Object> get props => [];
}

// Evento para cargar los personajes inicialmente
class LoadCharactersEvent extends CharacterEvent {}

// Evento para cargar más personajes al hacer scroll
class LoadMoreCharactersEvent extends CharacterEvent {
  final int offset;

  LoadMoreCharactersEvent(this.offset);

  @override
  List<Object> get props => [offset];
}

