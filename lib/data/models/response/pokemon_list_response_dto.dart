import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_response_dto.freezed.dart';
part 'pokemon_list_response_dto.g.dart';

@freezed
abstract class PokemonListResponseDto with _$PokemonListResponseDto {
  const factory PokemonListResponseDto({
    @JsonKey(name: "count")
    int? count,
    @JsonKey(name: "next")
    String? next,
    @JsonKey(name: "previous")
    String? previous,
    @JsonKey(name: "results")
    required List<Result> results,
  }) = _PokemonListResponseDto;

  factory PokemonListResponseDto.fromJson(Map<String, dynamic> json) => _$PokemonListResponseDtoFromJson(json);
}

@freezed
abstract class Result with _$Result {
  const factory Result({
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "url")
    String? url,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
