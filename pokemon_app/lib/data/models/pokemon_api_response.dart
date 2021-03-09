import 'package:json_annotation/json_annotation.dart';
import '../../data/data.dart';

part 'pokemon_api_response.g.dart';

@JsonSerializable()
class PokemonApiResponse {
  final List<Pokemon> pokemon;

  PokemonApiResponse({
    this.pokemon,
  });

  factory PokemonApiResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonApiResponseToJson(this);
}
