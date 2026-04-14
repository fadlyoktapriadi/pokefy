import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:pokefy/di/injection.dart' as di;
import 'package:pokefy/presentation/bloc/connectivity/connectivity_cubit.dart';
import 'package:pokefy/presentation/bloc/home/get_pokemon_bloc.dart';
import 'package:pokefy/presentation/widgets/item_pokemon.dart';
import 'package:pokefy/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final GetPokemonBloc _getPokemonBloc;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _getPokemonBloc = di.locator<GetPokemonBloc>()
      ..add(GetPokemonEvent.getListPokemon());
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final threshold = _scrollController.position.maxScrollExtent * 0.8;
    if (_scrollController.position.pixels >= threshold) {
      _getPokemonBloc.add(const GetPokemonEvent.fetchNextPage());
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _getPokemonBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _getPokemonBloc,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFebf4f5), Color(0xFFb5c6e0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 18.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pokefy", style: AppTheme.appTextStyles.iconAppText),
                      IconButton(
                        onPressed: () {
                          context.pushNamed('favorite');
                        },
                        icon: Image.asset(
                          "assets/icons/ic_favorite_list.png",
                          width: 32.w,
                          height: 32.h,
                          color: AppTheme.appColors.secondary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What Are You Looking \nFor ?",
                      style: AppTheme.appTextStyles.header1.copyWith(
                        color: AppTheme.appColors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Expanded(
                    child: BlocBuilder<GetPokemonBloc, GetPokemonState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () =>
                              const Center(child: CircularProgressIndicator()),
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          loaded: (listPokemon, hasReachedMax, isLoadingMore) {
                            final itemCount = isLoadingMore && !hasReachedMax
                                ? listPokemon.length + 1
                                : listPokemon.length;

                            return GridView.builder(
                              controller: _scrollController,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10.w,
                                    mainAxisSpacing: 10.h,
                                    childAspectRatio: 0.8,
                                  ),
                              itemCount: itemCount,
                              itemBuilder: (context, index) {
                                if (index >= listPokemon.length) {
                                  return Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(16.w),
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                return ItemPokemon(
                                  pokemon: listPokemon[index],
                                  onTap: () async {
                                    final selected = listPokemon[index];
                                    final imageUrl = selected
                                        .sprites
                                        ?.other
                                        ?.home
                                        ?.frontDefault;

                                    if (imageUrl != null &&
                                        imageUrl.isNotEmpty) {
                                      await precacheImage(
                                        CachedNetworkImageProvider(imageUrl),
                                        context,
                                      );
                                    }

                                    if (context.mounted) {
                                      context.pushNamed(
                                        'detail',
                                        extra: selected,
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          },
                          error: (message) => Center(
                            child: Column(
                              children: [
                                Lottie.asset(
                                  "assets/animations/not_found.json",
                                  width: 200.w,
                                  height: 200.h,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 14.h),
                                Text(
                                  "Failed to load pokemons. Please try again.",
                                  style: AppTheme.appTextStyles.bodyMedium
                                ),
                                InkWell(
                                  onTap: () {
                                    _getPokemonBloc
                                      .add(GetPokemonEvent.getListPokemon());
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 12.h),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.h,
                                      horizontal: 16.w,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppTheme.appColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      "Retry",
                                      style: AppTheme.appTextStyles.bodyMedium
                                          .copyWith(color: Colors.white),
                                    )
                                  )
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  BlocBuilder<ConnectivityCubit, ConnectivityState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        disconnected: () => Container(
                          padding: EdgeInsets.all(8.w),
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.warning, color: Colors.white),
                              const SizedBox(width: 8),
                              Text(
                                "No Internet Connection",
                                style: AppTheme.appTextStyles.bodySmall
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
