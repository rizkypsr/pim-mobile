import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pim_mobile/core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
InternetConnectionChecker internetConnectionChecker(
    InternetConnectionCheckerRef ref) {
  return InternetConnectionChecker();
}

@riverpod
NetworkInfo networkInfo(NetworkInfoRef ref) {
  return NetworkInfoImpl(
    connectionChecker: ref.read(internetConnectionCheckerProvider),
  );
}
