import 'package:bloc/bloc.dart';
import '../../data/data.dart';
import '../../blocs/blocs.dart';
import '../../utilities/utilities.dart';
import '../../constants/constants.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState> {
  PokemonApiResponse _pokemonApiResponse;
  PokemonBloc() : super(PokemonInitial());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    if (event is PokemonDataFetched) {
      yield* _mapPokemonDataFetchedToState(event);
    }
    if (event is PokemonDataRefresh) {
      yield* _mapPokemonDataRefreshToState(event);
    }
  }

  Stream<PokemonState> _mapPokemonDataFetchedToState(
      PokemonDataFetched event) async* {
    yield PokemonLoadInProgress();

    final bool isConnected = await isInternetConnected();

    if (isConnected) {
      _pokemonApiResponse = await PokemonDataRepository.pokemons();
      print(_pokemonApiResponse.toJson());

      if (_pokemonApiResponse != null) {
        yield PokemonLoadSuccess(pokemon: _pokemonApiResponse.pokemon);
      } else {
        yield PokemonLoadFailure(error: AppStrings.noDataError);
      }
    } else {
      yield PokemonLoadFailure(error: AppStrings.noInternetError);
    }
  }

  Stream<PokemonState> _mapPokemonDataRefreshToState(
      PokemonDataRefresh event) async* {
    yield PokemonLoadInProgress();

    final bool isConnected = await isInternetConnected();

    if (isConnected) {
      _pokemonApiResponse = await PokemonDataRepository.pokemons();
      print(_pokemonApiResponse.toJson());

      if (_pokemonApiResponse != null) {
        yield PokemonLoadSuccess(pokemon: _pokemonApiResponse.pokemon);
      } else {
        yield PokemonLoadFailure(error: AppStrings.noDataError);
      }
    } else {
      yield PokemonLoadFailure(error: AppStrings.noInternetError);
    }
  }
}
