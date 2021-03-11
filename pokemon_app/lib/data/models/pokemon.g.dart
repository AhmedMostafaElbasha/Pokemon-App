// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return Pokemon(
    id: json['id'] as int,
    number: json['num'] as String,
    name: json['name'] as String,
    img: json['img'] as String,
    type: (json['type'] as List)?.map((e) => e as String)?.toList(),
    height: json['height'] as String,
    weight: json['weight'] as String,
    candy: json['candy'] as String,
    candyCount: json['candy_count'] as int,
    egg: json['egg'] as String,
    spawnChance: json['spawn_chance'] as num,
    avgSpawns: json['avg_spawns'].toString(),
    spawnTime: json['spawn_time'] as String,
    multipliers: (json['multipliers'] as List)?.map((e) => e as num)?.toList(),
    weaknesses: (json['weaknesses'] as List)?.map((e) => e as String)?.toList(),
    nextEvolution: (json['next_evolution'] as List)
        ?.map((e) => e == null
            ? null
            : NextEvolution.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'num': instance.number,
      'name': instance.name,
      'img': instance.img,
      'type': instance.type,
      'height': instance.height,
      'weight': instance.weight,
      'candy': instance.candy,
      'candy_count': instance.candyCount,
      'egg': instance.egg,
      'spawn_chance': instance.spawnChance,
      'avg_spawns': instance.avgSpawns,
      'spawn_time': instance.spawnTime,
      'multipliers': instance.multipliers,
      'weaknesses': instance.weaknesses,
      'next_evolution': instance.nextEvolution,
    };
