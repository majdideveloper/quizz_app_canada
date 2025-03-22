import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/quiz/data/models/category_model.dart';
import 'package:quizz_app_canada/features/quiz/data/repositories/category_repository.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository categoryRepository;

  CategoryCubit({required this.categoryRepository})
    : super(const CategoryState.initial());

  Future<void> fetchCategories() async {
    emit(const CategoryState.loading());
    try {
      final categories = await categoryRepository.getCategories();
      categories.fold(
        (failure) => emit(CategoryState.error(failure.message)),
        (categories) => emit(CategoryState.loaded(categories)),
      );
    } catch (e) {
      emit(CategoryState.error("Failed to load categories: ${e.toString()}"));
    }
  }
}
