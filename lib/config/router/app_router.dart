import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          name: MovieScreen.name,
          path: 'movie/:id',
          builder: (context, state) => MovieScreen(
            movieid: state.pathParameters['id'] ?? 'no-id',
          ),
        )
      ]),
]);
