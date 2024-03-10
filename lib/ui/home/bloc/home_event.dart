part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.loadCatList() = _LoadCatList;
  const factory HomeEvent.getImageUrl() = _GetImageUrl;
  const factory HomeEvent.refreshCats() = _RefreshCats;
  const factory HomeEvent.search({
    String? search,
  }) = _Search;
}
