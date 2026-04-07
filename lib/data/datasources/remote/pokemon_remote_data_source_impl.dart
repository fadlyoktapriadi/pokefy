import 'package:pokefy/core/error/failure.dart';
import 'package:pokefy/core/networks/dio_client.dart';
import 'package:pokefy/data/datasources/remote/pokemon_remote_data_source.dart';
import 'package:pokefy/data/models/response/pokemon_list_response_dto.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';

class PokemonRemoteDataSourceImpl implements PokemonRemoteDataSource {
  final DioClient dioClient;

  PokemonRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<PokemonListResponseDto> getListPokemon({required int offset, required int limit}) async {
    try {
      final response = await dioClient.dio.get(
        '/pokemon',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );
      return PokemonListResponseDto.fromJson(response.data);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }

  @override
  Future<PokemonEntity> getPokemonDetail(String name) async {
    try {
      final response = await dioClient.dio.get('/pokemon/$name');
      return PokemonEntity.fromJson(response.data);
    } catch (e) {
      throw ServerFailure(message: e.toString());
    }
  }

}
