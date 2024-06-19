import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:template/src/routing/go_router_refresh_stream.dart';
import 'package:template/src/services/auth/data/auth_repository.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(ref) {
  final AuthRepository authRepository = ref.watch(authRepositoryProvider);

  return GoRouter(
    refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges),
    initialLocation: "/",
    routes: [],
  );
}
