import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../data/data.dart';

abstract class PokemonState extends Equatable {
  @override
  List<Object> get props => [];
}

class PokemonInitial extends PokemonState {}

class PokemonLoadInProgress extends PokemonState {}

class PokemonLoadSuccess extends PokemonState {
  final List<Pokemon> pokemon;

  PokemonLoadSuccess({@required this.pokemon});

  @override
  List<Object> get props => [pokemon];
}

class PokemonLoadFailure extends PokemonState {
  final String error;

  PokemonLoadFailure({@required this.error});

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
