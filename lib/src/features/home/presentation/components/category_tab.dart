import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/src/core/widgets/nothing.dart';
import 'package:open_fashion/src/features/home/presentation/bloc/categories/categories_cubit.dart';
import 'package:open_fashion/src/features/home/presentation/components/tabs.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<CategoriesCubit>(context).getCategories();
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesLoading) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: const Center(
                child: CircularProgressIndicator(color: Colors.black),
              ),
            ),
          );
        } else if (state is CategoriesLoaded) {
          return Tabs(
            allCategories: state.allCategories,
          );
        } else if (state is CategoriesError) {
          return SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(25),
              child: Center(
                child: Text(state.msg),
              ),
            ),
          );
        }
        return const Nothing();
      },
    );
  }
}
