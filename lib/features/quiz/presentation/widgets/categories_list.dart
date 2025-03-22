import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizz_app_canada/features/quiz/presentation/cubit/category/category_cubit.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: Text("Start Fetching")),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded:
                (categories) => ListView.builder(
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    return ListTile(
                      title: Text(category.name),
                      onTap: () {
                        // Handle category tap
                      },
                    );
                  },
                ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
