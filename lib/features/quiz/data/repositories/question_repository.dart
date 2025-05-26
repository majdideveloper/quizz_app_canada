import 'package:quizz_app_canada/features/quiz/domain/entities/question_entity.dart';
import 'package:quizz_app_canada/features/quiz/domain/repositories/question_repository.dart';
import 'package:quizz_app_canada/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../models/question_model.dart';
import '../datasources/remote/question_remote_data_source.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDataSource remoteDataSource;
  QuestionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, void>> addQuestion(QuestionEntity question) async {
    try {
      final model = QuestionModel(
        id: question.id,
        title: question.question,
        hintWrongAnswer: question.explanation ?? '',
        options: [], // TODO: Map options from entity if needed
        correctOption: throw UnimplementedError(), // TODO: Map correct option
        imageQuestion: question.imageUrl,
      );
      await remoteDataSource.addQuestion(model);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<QuestionEntity>>> getQuestions() async {
    try {
      final models = await remoteDataSource.getQuestions();
      final entities = models
          .map((model) => QuestionEntity(
                id: model.id,
                question: model.title,
                options: model.options.map((o) => o.title).toList(),
                correctOptionIndex: model.options
                    .indexWhere((o) => o.id == model.correctOption.id),
                imageUrl: model.imageQuestion,
                explanation: model.hintWrongAnswer,
              ))
          .toList();
      return Right(entities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> updateQuestion(QuestionEntity question) async {
    try {
      final model = QuestionModel(
        id: question.id,
        title: question.question,
        hintWrongAnswer: question.explanation ?? '',
        options: [], // TODO: Map options from entity if needed
        correctOption: throw UnimplementedError(), // TODO: Map correct option
        imageQuestion: question.imageUrl,
      );
      await remoteDataSource.updateQuestion(model);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteQuestion(String id) async {
    try {
      await remoteDataSource.deleteQuestion(id);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
