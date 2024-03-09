part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isLoading,
    Failure? failure,
    required CatDetailModel cat,
  }) = _Initial;

  factory DetailState.initial() => DetailState(
    cat: CatDetailModel.empty()
  );
}
