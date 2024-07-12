import 'dart:io';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';

class CustomDioCacheInterceptor extends DioCacheInterceptor {
  late final Directory cacheDir;
  late final HiveCacheStore cacheStore;

  CustomDioCacheInterceptor({CacheOptions? customCacheOptions})
      : super(options: customCacheOptions ?? _defaultCacheOptions) {
    initializeCache();
  }

  Future<void> initializeCache() async {
    cacheDir = await getTemporaryDirectory();
    cacheStore = HiveCacheStore(
      cacheDir.path,
      hiveBoxName: "pim_mobile_cache",
    );
  }

  static CacheOptions get _defaultCacheOptions {
    return CacheOptions(
      store: null,
      policy: CachePolicy.forceCache,
      priority: CachePriority.high,
      maxStale: const Duration(minutes: 5),
      hitCacheOnErrorExcept: [401, 404],
      keyBuilder: (request) {
        return request.uri.toString();
      },
      allowPostMethod: false,
    );
  }
}
