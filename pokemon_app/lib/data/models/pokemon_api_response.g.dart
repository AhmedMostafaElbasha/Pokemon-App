// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonApiResponse _$PokemonApiResponseFromJson(Map<String, dynamic> json) {
  return PokemonApiResponse(
    pokemon: (json['pokemon'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonApiResponseToJson(PokemonApiResponse instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon,
    };
