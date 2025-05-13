import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/faq/domain/entities/faq_entity.dart';
import 'package:quizz_app_canada/features/faq/domain/usecases/get_all_faqs.dart';

part 'faq_state.dart';
part 'faq_cubit.freezed.dart';

class FaqCubit extends Cubit<FaqState> {
  final GetAllFaqs getAllFaqsUseCase;

  FaqCubit({required this.getAllFaqsUseCase}) : super(const FaqState.initial());

  Future<void> loadFaqs() async {
    emit(const FaqState.loading());
    final result = await getAllFaqsUseCase();

    result.fold(
      (failure) => emit(FaqState.failure(failure.defaultMessage)),
      (faqs) => emit(FaqState.loaded(faqs)),
    );
  }
}
