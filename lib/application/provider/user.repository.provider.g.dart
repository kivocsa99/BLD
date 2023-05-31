// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getnotificationsHash() => r'b47281b3560ab0ba97d7799bb2923245d557d51c';

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

String _$getWishlistHash() => r'c83107569fe2a723e89992b42320dc824213ee8f';

/// See also [getWishlist].
@ProviderFor(getWishlist)
final getWishlistProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, dynamic>>.internal(
  getWishlist,
  name: r'getWishlistProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getWishlistHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetWishlistRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
