import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quizz_app_canada/features/resource/domain/entities/resource_entity.dart';
import 'package:quizz_app_canada/features/resource/domain/usecases/get_resources.dart';

part 'resource_state.dart';
part 'resource_cubit.freezed.dart';

class ResourceCubit extends Cubit<ResourceState> {
  final GetResources getResources;

  ResourceCubit({required this.getResources}) : super(const ResourceInitial());

  Future<void> loadResources() async {
    emit(const ResourceLoading());
    try {
      final resources = await getResources();

      resources.fold(
          (failure) => emit(ResourceState.error(failure.defaultMessage)),
          (resources) => emit(ResourceState.loaded(resources)));
    } catch (e) {
      emit(ResourceState.error(e.toString()));
    }
  }
}
