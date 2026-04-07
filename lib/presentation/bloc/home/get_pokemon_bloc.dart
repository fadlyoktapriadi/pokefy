import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefy/domain/entity/pokemon/pokemon_entity.dart';
import 'package:pokefy/domain/usecase/get_detail_pokemon_use_case.dart';
import 'package:pokefy/domain/usecase/get_list_pokemon_use_case.dart';

part 'get_pokemon_event.dart';
part 'get_pokemon_state.dart';
part 'get_pokemon_bloc.freezed.dart';

class GetPokemonBloc extends Bloc<GetPokemonEvent, GetPokemonState> {
  final GetListPokemonUseCase _getListPokemonUseCase;
  final GetDetailPokemonUseCase _getDetailPokemonUseCase;

  static const int _pageSize = 20;
  int _offset = 0;
  bool _isFetching = false;
  bool _hasReachedMax = false;
  final List<PokemonEntity> _allPokemon = [];

  GetPokemonBloc(this._getListPokemonUseCase, this._getDetailPokemonUseCase)
      : super(const GetPokemonState.initial()) {
    on<GetPokemonEvent>((event, emit) async {
      await event.map(
        getListPokemon: (e) async {
          await _onGetListPokemon(emit);
        },
        fetchNextPage: (e) async {
          await _onFetchNextPage(emit);
        },
      );
    });
  }

  Future<void> _onGetListPokemon(Emitter<GetPokemonState> emit) async {
    _offset = 0;
    _hasReachedMax = false;
    _allPokemon.clear();
    await _fetchPage(emit, isInitial: true);
  }

  Future<void> _onFetchNextPage(Emitter<GetPokemonState> emit) async {
    await _fetchPage(emit);
  }

  Future<void> _fetchPage(
    Emitter<GetPokemonState> emit, {
    bool isInitial = false,
  }) async {
    if (_isFetching || _hasReachedMax) return;
    _isFetching = true;

    if (isInitial) {
      emit(const GetPokemonState.loading());
    } else {
      emit(
        GetPokemonState.loaded(
          listPokemon: List<PokemonEntity>.from(_allPokemon),
          hasReachedMax: _hasReachedMax,
          isLoadingMore: true,
        ),
      );
    }

    final result = await _getListPokemonUseCase(_offset, _pageSize);

    await result.fold(
      (failure) async {
        _isFetching = false;

        if (_allPokemon.isNotEmpty) {
          emit(
            GetPokemonState.loaded(
              listPokemon: List<PokemonEntity>.from(_allPokemon),
              hasReachedMax: _hasReachedMax,
            ),
          );
          return;
        }

        emit(GetPokemonState.error(failure.message));
      },
      (listPokemon) async {
        if (listPokemon.isEmpty) {
          _hasReachedMax = true;
          _isFetching = false;
          emit(
            GetPokemonState.loaded(
              listPokemon: List<PokemonEntity>.from(_allPokemon),
              hasReachedMax: _hasReachedMax,
            ),
          );
          return;
        }

        final detailedPokemonResult = await Future.wait(
          listPokemon.map(
            (pokemon) => _getDetailPokemonUseCase(pokemon.name ?? ''),
          ),
        );

        final pageDetails = <PokemonEntity>[];
        for (final detailResult in detailedPokemonResult) {
          detailResult.fold(
            (failure) {},
            (pokemonDetail) => pageDetails.add(pokemonDetail),
          );
        }

        _allPokemon.addAll(pageDetails);
        _offset += _pageSize;
        _hasReachedMax = listPokemon.length < _pageSize;
        _isFetching = false;

        emit(
          GetPokemonState.loaded(
            listPokemon: List<PokemonEntity>.from(_allPokemon),
            hasReachedMax: _hasReachedMax,
          ),
        );
      },
    );
  }
}
