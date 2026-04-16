import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokefy/domain/repository/favorite_repository.dart';
import 'package:pokefy/domain/usecase/check_favorite_use_case.dart';

class MockFavoriteRepository extends Mock implements FavoriteRepository {}

void main() {
  late MockFavoriteRepository mockFavoriteRepository;
  late CheckFavoriteUseCase useCase;

  setUp(() {
    mockFavoriteRepository = MockFavoriteRepository();
    useCase = CheckFavoriteUseCase(mockFavoriteRepository);
  });

  const tId = 25;

  test('should return true when pokemon is found in favorite repository', () {
    when(() => mockFavoriteRepository.isFavorite(tId)).thenReturn(true);

    final result = useCase.call(tId);

    expect(result, true);
    verify(() => mockFavoriteRepository.isFavorite(tId)).called(1);
    verifyNoMoreInteractions(mockFavoriteRepository);
  });

  test(
    'should return false when pokemon is not found in favorite repository',
    () {
      when(() => mockFavoriteRepository.isFavorite(tId)).thenReturn(false);

      final result = useCase.call(tId);

      expect(result, false);
      verify(() => mockFavoriteRepository.isFavorite(tId)).called(1);
      verifyNoMoreInteractions(mockFavoriteRepository);
    },
  );
}
