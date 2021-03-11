import 'package:equatable/equatable.dart';

abstract class PokemonEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class PokemonDataFetched extends PokemonEvent {}

class PokemonDataRefresh extends PokemonEvent {}
