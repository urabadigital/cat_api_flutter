import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pragma/core/home/data/models/cat.dart';
import 'package:pragma/core/home/data/models/cat_detail.dart';
import 'package:pragma/core/home/domain/entities/entities.dart';
import 'package:pragma/core/home/domain/usecases/home_usecases.dart';

import '../../../../core/common/error/error.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final HomeUseCase _homeUseCase;
  DetailBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(DetailState.initial()) {
    on<_Detail>(_getDetail);
  }

  Future<void> _getDetail(_Detail event, Emitter<DetailState> emit) async {
    if (event.cat.referenceImageId == null ||
        (event.cat.referenceImageId?.isEmpty ?? false)) {
      final catDetail = CatDetailModel(
        id: event.cat.id,
        url: event.cat.url,
        breeds: [
          CatModel(
            weight: event.cat.weight,
            id: event.cat.id,
            name: event.cat.name,
            origin: event.cat.origin,
            countryCode: event.cat.countryCode,
            countryCodes: event.cat.countryCodes,
            description: event.cat.description,
            adaptability: event.cat.adaptability,
            lifeSpan: event.cat.lifeSpan,
            intelligence: event.cat.intelligence,
            url: event.cat.url,
            referenceImageId: event.cat.referenceImageId,
          )
        ],
      );
      emit(state.copyWith(cat: catDetail));
    } else {
      final either =
          await _homeUseCase.getCatDetail(event.cat.referenceImageId ?? '');
      switch (either) {
        case Left(value: Failure failure):
          emit(state.copyWith(failure: failure));
        case Right(value: CatDetailModel cat):
          emit(state.copyWith(cat: cat));
      }
    }
  }
}
