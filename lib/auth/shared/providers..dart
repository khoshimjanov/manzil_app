import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manzil/auth/infrastructure/auth_repository.dart';
import 'package:manzil/core/shared/providers.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(dio: ref.watch(dioNotifierProvider)),
);
