
import 'package:flutter_examen1/presentation/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';


final mainRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
]);