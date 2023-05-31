// import 'package:bld/application/provider/orders.repository.provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class LazyLoadingListHook extends Hook<List> {
//   final String initialUrl;

//   const LazyLoadingListHook(this.initialUrl);

//   @override
//   LazyLoadingListHookState createState() => LazyLoadingListHookState();
// }

// class LazyLoadingListHookState extends HookState<List, LazyLoadingListHook> {
//   List? dataList;
//   String? nextPageUrl;
//   bool? isLoading;
//   ScrollController? scrollController;
//   WidgetRef? ref;

//   @override
//   void initHook() {
//     super.initHook();
//     dataList = [];
//     nextPageUrl = hook.initialUrl;
//     isLoading = false;
//     scrollController = ScrollController();

//     scrollController!.addListener(_scrollListener);
//   }

//   void _scrollListener() {
//     if (scrollController!.position.pixels ==
//         scrollController!.position.maxScrollExtent) {
//       loadMoreData();
//     }
//   }

//   Future<void> loadMoreData() async {
//     if (!isLoading! && nextPageUrl != null) {
//       isLoading = true;

//       // Fetch the next page of data using nextPageUrl
//       // Replace this with your actual API call
//       ref!
//           .watch(searchItemsProvider(nextUrl: nextPageUrl).future)
//           .then((value) => value.fold((l) => null, (r) => null));
//       List newData = ;

//       dataList!.addAll(newData);
//       isLoading = false;
//       nextPageUrl =
//           "your_next_page_url"; // Update the nextPageUrl for the next page

//       setState(() {});
//     }
//   }

//   @override
//   List<String> build(BuildContext context) {
//     return dataList;
//   }

//   @override
//   void dispose() {
//     scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   String get debugLabel => 'useLazyLoadingList';
// }
