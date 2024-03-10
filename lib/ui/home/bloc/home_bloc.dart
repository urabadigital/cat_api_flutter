import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/common/error/error.dart';
import '../../../core/home/domain/entities/entities.dart';
import '../../../core/home/domain/usecases/home_usecases.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _homeUseCase;
  HomeBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(const _Initial()) {
    on<_LoadCatList>(_getCatList);
    on<_GetImageUrl>(_getImageUrl);
    on<_Search>(_search);
  }

  Future<void> refreshCats() async {
    add(const _GetImageUrl());
  }

  Future<void> _getCatList(_LoadCatList event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    final either = await _homeUseCase.getCatList();
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: List<CatEntity> cat):
        emit(state.copyWith(cat: cat, isLoading: false, oldCat: cat));
        add(const _GetImageUrl());
    }
  }

  Future<void> _getImageUrl(_GetImageUrl event, Emitter<HomeState> emit) async {
    List<CatEntity> newlist = [];
    int count = 0;

    for (var element in state.cat) {
      count++;
      debugPrint('$count: ${element.name}');
      emit(state.copyWith(isLoadingImage: true));
      if (element.referenceImageId != null ||
          (element.referenceImageId?.isNotEmpty ?? false)) {
        final either =
            await _homeUseCase.getImageUrl(element.referenceImageId ?? '');
        either.fold(
          (failure) =>
              emit(state.copyWith(failure: failure, isLoadingImage: false)),
          (url) {
            final edit = element.copyWith(url: url);
            newlist.add(edit);
            emit(state.copyWith(
              cat: newlist,
              isLoadingImage: false,
              oldCat: newlist,
            ));
          },
        );
      } else {
        final empty = element.copyWith(url: '');
        newlist.add(empty);
        emit(state.copyWith(
          cat: newlist,
          isLoadingImage: false,
          oldCat: newlist,
        ));
      }
    }
  }

  Future<void> _search(_Search event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    if (event.search == '') {
      emit(state.copyWith(
        cat: state.oldCat,
        isLoading: false,
      ));
    } else {
      final filter = state.cat
          .where((element) =>
              element.name!.toLowerCase().contains(event.search!.toLowerCase()))
          .toList();
      emit(state.copyWith(cat: filter, isLoading: false));
    }
  }
}
