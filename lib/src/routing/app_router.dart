import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(ref) {
  return GoRouter(
    initialLocation: "/",
    routes: [],
  );
}
