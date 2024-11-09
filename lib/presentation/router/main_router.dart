
import 'package:flutter_examen1/presentation/screen/index.dart';
import 'package:go_router/go_router.dart';


final mainRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/news',
    builder:(context, tate) => const NewsScreen(), 
  )
]);