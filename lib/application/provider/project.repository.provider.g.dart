// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getprojectsHash() => r'86108c8c809690c1ec31c3122c57f12882fc2484';

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

typedef GetprojectsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getprojects].
@ProviderFor(getprojects)
const getprojectsProvider = GetprojectsFamily();

/// See also [getprojects].
class GetprojectsFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getprojects].
  const GetprojectsFamily();

  /// See also [getprojects].
  GetprojectsProvider call(
    String token,
  ) {
    return GetprojectsProvider(
      token,
    );
  }

  @override
  GetprojectsProvider getProviderOverride(
    covariant GetprojectsProvider provider,
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
  String? get name => r'getprojectsProvider';
}

/// See also [getprojects].
class GetprojectsProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getprojects].
  GetprojectsProvider(
    this.token,
  ) : super.internal(
          (ref) => getprojects(
            ref,
            token,
          ),
          from: getprojectsProvider,
          name: r'getprojectsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getprojectsHash,
          dependencies: GetprojectsFamily._dependencies,
          allTransitiveDependencies:
              GetprojectsFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetprojectsProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
