part of 'faq_cubit.dart';



@freezed
class FaqState with _$FaqState {
  const factory FaqState.initial() = FaqInitial;
  const factory FaqState.loading() = FaqLoading;
  const factory FaqState.loaded(List<FaqEntity> faqs) = FaqLoaded;
  const factory FaqState.success(String message) = FaqSuccess;
  const factory FaqState.failure(String message) = FaqFailure;
}
