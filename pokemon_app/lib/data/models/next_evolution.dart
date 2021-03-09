import 'package:json_annotation/json_annotation.dart';
import '../../data/data.dart';

part 'next_evolution.g.dart';

@JsonSerializable()
class NextEvolution {
  @JsonKey(name: 'num')
  final String number;
  final String name;

  NextEvolution({
    this.number,
    this.name,
  });

  factory NextEvolution.fromJson(Map<String, dynamic> json) =>
      _$NextEvolutionFromJson(json);
  Map<String, dynamic> toJson() => _$NextEvolutionToJson(this);
}
