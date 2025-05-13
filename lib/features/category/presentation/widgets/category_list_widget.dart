import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/features/category/presentation/cubit/category/category_cubit.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  void initState() {
    super.initState();
    context.read<CategoryCubit>().fetchCategories(); // fetch categories on init
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (message) => Center(child: Text(message)),
          loaded: (categories) {
            if (categories.isEmpty) {
              return const Center(child: Text("No categories found."));
            }

            return GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              itemCount: categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                final category = categories[index];
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      '/category_page',
                      arguments: category,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors
                          .red, // category.backgroundColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          category.name,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${category.quizzes.length} Quizzes',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.grey[700],
                              ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
