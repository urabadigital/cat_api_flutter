// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoadCatListImplCopyWith<$Res> {
  factory _$$LoadCatListImplCopyWith(
          _$LoadCatListImpl value, $Res Function(_$LoadCatListImpl) then) =
      __$$LoadCatListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCatListImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadCatListImpl>
    implements _$$LoadCatListImplCopyWith<$Res> {
  __$$LoadCatListImplCopyWithImpl(
      _$LoadCatListImpl _value, $Res Function(_$LoadCatListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCatListImpl implements _LoadCatList {
  const _$LoadCatListImpl();

  @override
  String toString() {
    return 'HomeEvent.loadCatList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCatListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
  }) {
    return loadCatList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
  }) {
    return loadCatList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    required TResult orElse(),
  }) {
    if (loadCatList != null) {
      return loadCatList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
  }) {
    return loadCatList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
  }) {
    return loadCatList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    required TResult orElse(),
  }) {
    if (loadCatList != null) {
      return loadCatList(this);
    }
    return orElse();
  }
}

abstract class _LoadCatList implements HomeEvent {
  const factory _LoadCatList() = _$LoadCatListImpl;
}

/// @nodoc
abstract class _$$GetImageUrlImplCopyWith<$Res> {
  factory _$$GetImageUrlImplCopyWith(
          _$GetImageUrlImpl value, $Res Function(_$GetImageUrlImpl) then) =
      __$$GetImageUrlImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImageUrlImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetImageUrlImpl>
    implements _$$GetImageUrlImplCopyWith<$Res> {
  __$$GetImageUrlImplCopyWithImpl(
      _$GetImageUrlImpl _value, $Res Function(_$GetImageUrlImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImageUrlImpl implements _GetImageUrl {
  const _$GetImageUrlImpl();

  @override
  String toString() {
    return 'HomeEvent.getImageUrl()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImageUrlImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
  }) {
    return getImageUrl();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
  }) {
    return getImageUrl?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    required TResult orElse(),
  }) {
    if (getImageUrl != null) {
      return getImageUrl();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
  }) {
    return getImageUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
  }) {
    return getImageUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    required TResult orElse(),
  }) {
    if (getImageUrl != null) {
      return getImageUrl(this);
    }
    return orElse();
  }
}

abstract class _GetImageUrl implements HomeEvent {
  const factory _GetImageUrl() = _$GetImageUrlImpl;
}

/// @nodoc
abstract class _$$RefreshCatsImplCopyWith<$Res> {
  factory _$$RefreshCatsImplCopyWith(
          _$RefreshCatsImpl value, $Res Function(_$RefreshCatsImpl) then) =
      __$$RefreshCatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCatsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshCatsImpl>
    implements _$$RefreshCatsImplCopyWith<$Res> {
  __$$RefreshCatsImplCopyWithImpl(
      _$RefreshCatsImpl _value, $Res Function(_$RefreshCatsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshCatsImpl implements _RefreshCats {
  const _$RefreshCatsImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshCats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshCatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
  }) {
    return refreshCats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
  }) {
    return refreshCats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    required TResult orElse(),
  }) {
    if (refreshCats != null) {
      return refreshCats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
  }) {
    return refreshCats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
  }) {
    return refreshCats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    required TResult orElse(),
  }) {
    if (refreshCats != null) {
      return refreshCats(this);
    }
    return orElse();
  }
}

abstract class _RefreshCats implements HomeEvent {
  const factory _RefreshCats() = _$RefreshCatsImpl;
}

/// @nodoc
mixin _$HomeState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<CatEntity> get cat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({Failure? failure, bool isLoading, List<CatEntity> cat});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? cat = null,
  }) {
    return _then(_value.copyWith(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cat: null == cat
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Failure? failure, bool isLoading, List<CatEntity> cat});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? isLoading = null,
    Object? cat = null,
  }) {
    return _then(_$InitialImpl(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      cat: null == cat
          ? _value._cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.failure,
      this.isLoading = false,
      final List<CatEntity> cat = const []})
      : _cat = cat;

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  final List<CatEntity> _cat;
  @override
  @JsonKey()
  List<CatEntity> get cat {
    if (_cat is EqualUnmodifiableListView) return _cat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cat);
  }

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, cat: $cat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._cat, _cat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, isLoading,
      const DeepCollectionEquality().hash(_cat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {final Failure? failure,
      final bool isLoading,
      final List<CatEntity> cat}) = _$InitialImpl;

  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  List<CatEntity> get cat;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
