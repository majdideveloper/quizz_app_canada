import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/quiz/data/models/question_model.dart';
import 'package:quizz_app_canada/features/quiz/data/repositories/quiz_repository.dart';

part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';

class QuizCubit extends Cubit<QuizState> {
  final QuizRepository quizRepository;
  QuizCubit({ required this.quizRepository}) : super(QuizState.initial());


  // Future<void> checkQuizAccess() async {
  //   emit(state.copyWith(isLoading: true));

  //   final result = await quizRepository.hasUserTestedQuiz();

  //   result.fold(
  //     (failure) => emit(state.copyWith(
  //       isLoading: false,
  //       errorMessage: "__Failed to check quiz access",
  //     )),
  //     (hasTested) => emit(state.copyWith(
  //       hasTestedQuiz: hasTested,
  //       isLoading: false,
  //       errorMessage: null,
  //     )),
  //   );
  // }

  // Future<void> completeFreeQuiz() async {
  //   emit(state.copyWith(isLoading: true));

  //   final result = await quizRepository.setUserTestedQuiz();

  //   result.fold(
  //     (failure) => emit(state.copyWith(
  //       isLoading: false,
  //       errorMessage: "__Failed to save quiz completion",
  //     )),
  //     (_) => emit(state.copyWith(
  //       hasTestedQuiz: true,
  //       isLoading: false,
  //       errorMessage: null,
  //     )),
  //   );
  // }

Future<void> getTestQuiz() async {
  emit(const QuizState.loading());

  final result = await quizRepository.getQuiz('cz00a317e9vg18x');

  result.fold(
    (failure) {
      emit(const QuizState.error("__Failed to load quiz"));
    },
    (quiz) {
      emit(QuizState.loaded(quiz.questions));
    },
  );
}
}
