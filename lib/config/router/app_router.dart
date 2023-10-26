import 'package:cinemapedia/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/home/0', routes: [
  GoRoute(
      name: HomeScreen.name,
      path: '/home/:page',
      builder: (context, state) {
        final pageIndex = (state.pathParameters['page'] ?? 0).toString();

        return HomeScreen(
          pageIndex: int.parse(pageIndex),
        );
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
    path: '/',
    redirect: (_, __) => '/home/0',
  )
]);
