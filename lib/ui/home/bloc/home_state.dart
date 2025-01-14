part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Failure? failure,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingImage,
    @Default([]) List<CatEntity> cat,
    @Default([]) List<CatEntity> oldCat,
  }) = _Initial;
}
