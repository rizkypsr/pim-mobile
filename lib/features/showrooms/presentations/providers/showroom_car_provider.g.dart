// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'showroom_car_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCarsByShowroomHash() => r'4a67d2906cf776a0710620ef9493af22933ed0d6';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getCarsByShowroom].
@ProviderFor(getCarsByShowroom)
const getCarsByShowroomProvider = GetCarsByShowroomFamily();

/// See also [getCarsByShowroom].
class GetCarsByShowroomFamily extends Family<AsyncValue<List<CarEntity>>> {
  /// See also [getCarsByShowroom].
  const GetCarsByShowroomFamily();

  /// See also [getCarsByShowroom].
  GetCarsByShowroomProvider call(
    int showroomId,
  ) {
    return GetCarsByShowroomProvider(
      showroomId,
    );
  }

  @override
  GetCarsByShowroomProvider getProviderOverride(
    covariant GetCarsByShowroomProvider provider,
  ) {
    return call(
      provider.showroomId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCarsByShowroomProvider';
}

/// See also [getCarsByShowroom].
class GetCarsByShowroomProvider
    extends AutoDisposeFutureProvider<List<CarEntity>> {
  /// See also [getCarsByShowroom].
  GetCarsByShowroomProvider(
    int showroomId,
  ) : this._internal(
          (ref) => getCarsByShowroom(
            ref as GetCarsByShowroomRef,
            showroomId,
          ),
          from: getCarsByShowroomProvider,
          name: r'getCarsByShowroomProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCarsByShowroomHash,
          dependencies: GetCarsByShowroomFamily._dependencies,
          allTransitiveDependencies:
              GetCarsByShowroomFamily._allTransitiveDependencies,
          showroomId: showroomId,
        );

  GetCarsByShowroomProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.showroomId,
  }) : super.internal();

  final int showroomId;

  @override
  Override overrideWith(
    FutureOr<List<CarEntity>> Function(GetCarsByShowroomRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCarsByShowroomProvider._internal(
        (ref) => create(ref as GetCarsByShowroomRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        showroomId: showroomId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CarEntity>> createElement() {
    return _GetCarsByShowroomProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCarsByShowroomProvider && other.showroomId == showroomId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, showroomId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetCarsByShowroomRef on AutoDisposeFutureProviderRef<List<CarEntity>> {
  /// The parameter `showroomId` of this provider.
  int get showroomId;
}

class _GetCarsByShowroomProviderElement
    extends AutoDisposeFutureProviderElement<List<CarEntity>>
    with GetCarsByShowroomRef {
  _GetCarsByShowroomProviderElement(super.provider);

  @override
  int get showroomId => (origin as GetCarsByShowroomProvider).showroomId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
