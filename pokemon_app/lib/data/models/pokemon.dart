import 'package:json_annotation/json_annotation.dart';
import '../../data/data.dart';

part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  final int id;
  @JsonKey(name: 'num')
  final String number;
  final String name;
  final String img;
  final List<String> type;
  final String height;
  final String weight;
  final String candy;
  @JsonKey(name: 'candy_count')
  final int candyCount;
  final String egg;
  @JsonKey(name: 'spawn_chance')
  final num spawnChance;
  @JsonKey(name: 'avg_spawns')
  final String avgSpawns;
  @JsonKey(name: 'spawn_time')
  final String spawnTime;
  final List<num> multipliers;
  final List<String> weaknesses;
  @JsonKey(name: 'next_evolution')
  final List<NextEvolution> nextEvolution;

  Pokemon({
    this.id,
    this.number,
    this.name,
    this.img,
    this.type,
    this.height,
    this.weight,
    this.candy,
    this.candyCount,
    this.egg,
    this.spawnChance,
    this.avgSpawns,
    this.spawnTime,
    this.multipliers,
    this.weaknesses,
    this.nextEvolution,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
