import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:cinemapedia/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) {
              return const HomeView();
            },
            routes: [
              GoRoute(
                name: MovieScreen.name,
                path: 'movie/:id',
                builder: (context, state) => MovieScreen(
                  movieid: state.pathParameters['id'] ?? 'no-id',
                ),
              )
            ]),
        GoRoute(
          path: '/favorites',
          builder: (context, state) {
            return const FavoritesView();
          },
        )
      ])

  // rutas padre/hijo
  // GoRoute(
  //     name: HomeScreen.name,
  //     path: '/',
  //     builder: (context, state) => const HomeScreen(
  //           childView: FavoritesView(),
  //         ),
  //     routes: [
  //       GoRoute(
  //         name: MovieScreen.name,
  //         path: 'movie/:id',
  //         builder: (context, state) => MovieScreen(
  //           movieid: state.pathParameters['id'] ?? 'no-id',
  //         ),
  //       )
  //     ]),
]);
