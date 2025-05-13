part of 'resource_cubit.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState.initial() = ResourceInitial;
  const factory ResourceState.loading() = ResourceLoading;
  const factory ResourceState.loaded(List<ResourceEntity> resources) = ResourceLoaded;
  const factory ResourceState.error(String message) = ResourceError;
}
