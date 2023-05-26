// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getconsultationHash() => r'd68e0ce17b77c267edafde449691d4f159ab1b03';

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

typedef GetconsultationRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getconsultation].
@ProviderFor(getconsultation)
const getconsultationProvider = GetconsultationFamily();

/// See also [getconsultation].
class GetconsultationFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getconsultation].
  const GetconsultationFamily();

  /// See also [getconsultation].
  GetconsultationProvider call(
    String token,
  ) {
    return GetconsultationProvider(
      token,
    );
  }

  @override
  GetconsultationProvider getProviderOverride(
    covariant GetconsultationProvider provider,
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
  String? get name => r'getconsultationProvider';
}

/// See also [getconsultation].
class GetconsultationProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getconsultation].
  GetconsultationProvider(
    this.token,
  ) : super.internal(
          (ref) => getconsultation(
            ref,
            token,
          ),
          from: getconsultationProvider,
          name: r'getconsultationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getconsultationHash,
          dependencies: GetconsultationFamily._dependencies,
          allTransitiveDependencies:
              GetconsultationFamily._allTransitiveDependencies,
        );

  final String token;

  @override
  bool operator ==(Object other) {
    return other is GetconsultationProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
