import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:bld/domain/category/model/categorymodel.dart';
import 'package:bld/presentation/components/scrollglowbehavior.dart';
import 'package:bld/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'categorycard.dart';

class CategoryGrid extends HookWidget {
  final List<CategoryModel>? categories;
  final double? width;
  const CategoryGrid({this.width, super.key, this.categories});

  @override
  Widget build(BuildContext context) {
    final maxItemsPerPage = useState(10);
    final maxColumns = useState(5);
    final currentPageIndex = useState(0);
    return SizedBox(
      height: width! < 400 ? 200 : 250,
      child: Column(
        children: [
          Expanded(
            child: ScrollConfiguration(
              behavior: GlowBehavior(),
              child: PageView.builder(
                onPageChanged: (index) {
                  currentPageIndex.value = index;
                },
                itemCount: (categories!.length / maxItemsPerPage.value).ceil(),
                itemBuilder: (context, pageIndex) {
                  final startIndex =
                      currentPageIndex.value * maxItemsPerPage.value;
                  final endIndex =
                      (startIndex + maxItemsPerPage.value) > categories!.length
                          ? categories!.length
                          : startIndex + maxItemsPerPage.value;
                  final data = categories!.sublist(startIndex, endIndex);
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: maxColumns.value,
                      mainAxisSpacing: 20.0,
                    ),
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return GestureDetector(
                        onTap: () => context.router.push(CategoryRoute(
                            categoryName: item.name,
                            categoryId: item.id.toString())),
                        child: CategoryCard(
                          width: width,
                          title: item.name,
                          icon: item.image,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              (categories!.length / maxItemsPerPage.value).ceil(),
              (index) => Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(
                  math.pi / 4,
                ),
                child: Container(
                  margin: const EdgeInsets.all(4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: index == currentPageIndex.value
                        ? const Color(0xff3B788B)
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
