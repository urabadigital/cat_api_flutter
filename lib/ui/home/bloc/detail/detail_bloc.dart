import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';
import 'package:pragma/core/home/domain/usecases/home_usecases.dart';

import '../../../../core/common/error/error.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final HomeUseCase _homeUseCase;
  DetailBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(const _Initial()) {
    on<_Detail>(_getDetail);
  }

  Future<void> _getDetail(_Detail event, Emitter<DetailState> emit) async {
    final either = await _homeUseCase.getCatDetail(event.referenceImageId);
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure));
      case Right(value: CatDetailModel cat):
        emit(state.copyWith(cat: cat));
    }
  }
}
