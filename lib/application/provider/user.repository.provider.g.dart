// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getorderHash() => r'd66a9f440bdadb1142772dc7dcf03dc3e75043c7';

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

typedef GetorderRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getorder].
@ProviderFor(getorder)
const getorderProvider = GetorderFamily();

/// See also [getorder].
class GetorderFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getorder].
  const GetorderFamily();

  /// See also [getorder].
  GetorderProvider call(
    String token,
  ) {
    return GetorderProvider(
      token,
    );
  }

  @override
  GetorderProvider getProviderOverride(
    covariant GetorderProvider provider,
  ) {
    return call(
      provider.token,
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
  String? get name => r'getorderProvider';
}

/// See also [getorder].
class GetorderProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getorder].
  GetorderProvider(
    this.token,
  ) : super.internal(
          (ref) => getorder(
            ref,
            token,
          ),
          from: getorderProvider,
          name: r'getorderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getorderHash,
          dependencies: GetorderFamily._dependencies,
          allTransitiveDependencies: GetorderFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetorderProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getnewHash() => r'551befc22d973d3301f8315a2e07e5f520f1e659';
typedef GetnewRef = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getnew].
@ProviderFor(getnew)
const getnewProvider = GetnewFamily();

/// See also [getnew].
class GetnewFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getnew].
  const GetnewFamily();

  /// See also [getnew].
  GetnewProvider call(
    String token,
    String id,
    String model,
  ) {
    return GetnewProvider(
      token,
      id,
      model,
    );
  }

  @override
  GetnewProvider getProviderOverride(
    covariant GetnewProvider provider,
  ) {
    return call(
      provider.token,
      provider.id,
      provider.model,
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
  String? get name => r'getnewProvider';
}

/// See also [getnew].
class GetnewProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getnew].
  GetnewProvider(
    this.token,
    this.id,
    this.model,
  ) : super.internal(
          (ref) => getnew(
            ref,
            token,
            id,
            model,
          ),
          from: getnewProvider,
          name: r'getnewProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getnewHash,
          dependencies: GetnewFamily._dependencies,
          allTransitiveDependencies: GetnewFamily._allTransitiveDependencies,
        );

  final String token;
  final String id;
  final String model;

  @override
  bool operator ==(Object other) {
    return other is GetnewProvider &&
        other.token == token &&
        other.id == id &&
        other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getnotificationsHash() => r'b47281b3560ab0ba97d7799bb2923245d557d51c';
typedef GetnotificationsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getnotifications].
@ProviderFor(getnotifications)
const getnotificationsProvider = GetnotificationsFamily();

/// See also [getnotifications].
class GetnotificationsFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getnotifications].
  const GetnotificationsFamily();

  /// See also [getnotifications].
  GetnotificationsProvider call(
    String token,
  ) {
    return GetnotificationsProvider(
      token,
    );
  }

  @override
  GetnotificationsProvider getProviderOverride(
    covariant GetnotificationsProvider provider,
  ) {
    return call(
      provider.token,
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
  String? get name => r'getnotificationsProvider';
}

/// See also [getnotifications].
class GetnotificationsProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getnotifications].
  GetnotificationsProvider(
    this.token,
  ) : super.internal(
          (ref) => getnotifications(
            ref,
            token,
          ),
          from: getnotificationsProvider,
          name: r'getnotificationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getnotificationsHash,
          dependencies: GetnotificationsFamily._dependencies,
          allTransitiveDependencies:
              GetnotificationsFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetnotificationsProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
