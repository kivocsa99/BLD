// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSearchPageHash() => r'cefd3b5b84e9008c21e8f843d33bb2bfa1c0e1c8';

/// See also [getSearchPage].
@ProviderFor(getSearchPage)
final getSearchPageProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, dynamic>>.internal(
  getSearchPage,
  name: r'getSearchPageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSearchPageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetSearchPageRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;
String _$getCartHash() => r'0d49d71cade2fd83f946c5340b87f367cde767d5';

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

typedef GetCartRef = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [getCart].
@ProviderFor(getCart)
const getCartProvider = GetCartFamily();

/// See also [getCart].
class GetCartFamily extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [getCart].
  const GetCartFamily();

  /// See also [getCart].
  GetCartProvider call(
    String? supplierId,
  ) {
    return GetCartProvider(
      supplierId,
    );
  }

  @override
  GetCartProvider getProviderOverride(
    covariant GetCartProvider provider,
  ) {
    return call(
      provider.supplierId,
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
  String? get name => r'getCartProvider';
}

/// See also [getCart].
class GetCartProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [getCart].
  GetCartProvider(
    this.supplierId,
  ) : super.internal(
          (ref) => getCart(
            ref,
            supplierId,
          ),
          from: getCartProvider,
          name: r'getCartProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCartHash,
          dependencies: GetCartFamily._dependencies,
          allTransitiveDependencies: GetCartFamily._allTransitiveDependencies,
        );

  final String? supplierId;

  @override
  bool operator ==(Object other) {
    return other is GetCartProvider && other.supplierId == supplierId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, supplierId.hashCode);

    return _SystemHash.finish(hash);
  }
}

String _$getdeliveryHash() => r'203737f679b471ae292171aec651fdf6ea386a77';

/// See also [getdelivery].
@ProviderFor(getdelivery)
final getdeliveryProvider =
    AutoDisposeFutureProvider<Either<ApiFailures, dynamic>>.internal(
  getdelivery,
  name: r'getdeliveryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getdeliveryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetdeliveryRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;
String _$searchItemsHash() => r'30d64dcc4eff53d1779384ca2298062951a3640d';
typedef SearchItemsRef
    = AutoDisposeFutureProviderRef<Either<ApiFailures, dynamic>>;

/// See also [searchItems].
@ProviderFor(searchItems)
const searchItemsProvider = SearchItemsFamily();

/// See also [searchItems].
class SearchItemsFamily
    extends Family<AsyncValue<Either<ApiFailures, dynamic>>> {
  /// See also [searchItems].
  const SearchItemsFamily();

  /// See also [searchItems].
  SearchItemsProvider call({
    String? title,
    String? supplierid,
    String? categoryid,
  }) {
    return SearchItemsProvider(
      title: title,
      supplierid: supplierid,
      categoryid: categoryid,
    );
  }

  @override
  SearchItemsProvider getProviderOverride(
    covariant SearchItemsProvider provider,
  ) {
    return call(
      title: provider.title,
      supplierid: provider.supplierid,
      categoryid: provider.categoryid,
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
  String? get name => r'searchItemsProvider';
}

/// See also [searchItems].
class SearchItemsProvider
    extends AutoDisposeFutureProvider<Either<ApiFailures, dynamic>> {
  /// See also [searchItems].
  SearchItemsProvider({
    this.title,
    this.supplierid,
    this.categoryid,
  }) : super.internal(
          (ref) => searchItems(
            ref,
            title: title,
            supplierid: supplierid,
            categoryid: categoryid,
          ),
          from: searchItemsProvider,
          name: r'searchItemsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchItemsHash,
          dependencies: SearchItemsFamily._dependencies,
          allTransitiveDependencies:
              SearchItemsFamily._allTransitiveDependencies,
        );

  final String? title;
  final String? supplierid;
  final String? categoryid;

  @override
  bool operator ==(Object other) {
    return other is SearchItemsProvider &&
        other.title == title &&
        other.supplierid == supplierid &&
        other.categoryid == categoryid;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, title.hashCode);
    hash = _SystemHash.combine(hash, supplierid.hashCode);
    hash = _SystemHash.combine(hash, categoryid.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
