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
    required TResult Function(String? search) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
    TResult? Function(String? search)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    TResult Function(String? search)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_LoadCatList value) loadCatList,
    required TResult Function(_GetImageUrl value) getImageUrl,
    required TResult Function(_RefreshCats value) refreshCats,
    required TResult Function(_Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
    TResult? Function(_Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    TResult Function(_Search value)? search,
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
    required TResult Function(String? search) search,
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
    TResult? Function(String? search)? search,
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
    TResult Function(String? search)? search,
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
    required TResult Function(_Search value) search,
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
    TResult? Function(_Search value)? search,
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
    TResult Function(_Search value)? search,
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
    required TResult Function(String? search) search,
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
    TResult? Function(String? search)? search,
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
    TResult Function(String? search)? search,
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
    required TResult Function(_Search value) search,
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
    TResult? Function(_Search value)? search,
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
    TResult Function(_Search value)? search,
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
    required TResult Function(String? search) search,
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
    TResult? Function(String? search)? search,
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
    TResult Function(String? search)? search,
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
    required TResult Function(_Search value) search,
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
    TResult? Function(_Search value)? search,
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
    TResult Function(_Search value)? search,
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
    required TResult Function(String? search) search,
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
    TResult? Function(String? search)? search,
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
    TResult Function(String? search)? search,
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
    required TResult Function(_Search value) search,
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
    TResult? Function(_Search value)? search,
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
    TResult Function(_Search value)? search,
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
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? search});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = freezed,
  }) {
    return _then(_$SearchImpl(
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl({this.search});

  @override
  final String? search;

  @override
  String toString() {
    return 'HomeEvent.search(search: $search)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadCatList,
    required TResult Function() getImageUrl,
    required TResult Function() refreshCats,
    required TResult Function(String? search) search,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? loadCatList,
    TResult? Function()? getImageUrl,
    TResult? Function()? refreshCats,
    TResult? Function(String? search)? search,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadCatList,
    TResult Function()? getImageUrl,
    TResult Function()? refreshCats,
    TResult Function(String? search)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
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
    required TResult Function(_Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_LoadCatList value)? loadCatList,
    TResult? Function(_GetImageUrl value)? getImageUrl,
    TResult? Function(_RefreshCats value)? refreshCats,
    TResult? Function(_Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_LoadCatList value)? loadCatList,
    TResult Function(_GetImageUrl value)? getImageUrl,
    TResult Function(_RefreshCats value)? refreshCats,
    TResult Function(_Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomeEvent {
  const factory _Search({final String? search}) = _$SearchImpl;

  String? get search;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  Failure? get failure => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingImage => throw _privateConstructorUsedError;
  List<CatEntity> get cat => throw _privateConstructorUsedError;
  List<CatEntity> get oldCat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isLoadingImage,
      List<CatEntity> cat,
      List<CatEntity> oldCat});
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
    Object? isLoadingImage = null,
    Object? cat = null,
    Object? oldCat = null,
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
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      cat: null == cat
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
      oldCat: null == oldCat
          ? _value.oldCat
          : oldCat // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {Failure? failure,
      bool isLoading,
      bool isLoadingImage,
      List<CatEntity> cat,
      List<CatEntity> oldCat});
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
    Object? isLoadingImage = null,
    Object? cat = null,
    Object? oldCat = null,
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
      isLoadingImage: null == isLoadingImage
          ? _value.isLoadingImage
          : isLoadingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      cat: null == cat
          ? _value._cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
      oldCat: null == oldCat
          ? _value._oldCat
          : oldCat // ignore: cast_nullable_to_non_nullable
              as List<CatEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.failure,
      this.isLoading = false,
      this.isLoadingImage = false,
      final List<CatEntity> cat = const [],
      final List<CatEntity> oldCat = const []})
      : _cat = cat,
        _oldCat = oldCat;

  @override
  final Failure? failure;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingImage;
  final List<CatEntity> _cat;
  @override
  @JsonKey()
  List<CatEntity> get cat {
    if (_cat is EqualUnmodifiableListView) return _cat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cat);
  }

  final List<CatEntity> _oldCat;
  @override
  @JsonKey()
  List<CatEntity> get oldCat {
    if (_oldCat is EqualUnmodifiableListView) return _oldCat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldCat);
  }

  @override
  String toString() {
    return 'HomeState(failure: $failure, isLoading: $isLoading, isLoadingImage: $isLoadingImage, cat: $cat, oldCat: $oldCat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingImage, isLoadingImage) ||
                other.isLoadingImage == isLoadingImage) &&
            const DeepCollectionEquality().equals(other._cat, _cat) &&
            const DeepCollectionEquality().equals(other._oldCat, _oldCat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      failure,
      isLoading,
      isLoadingImage,
      const DeepCollectionEquality().hash(_cat),
      const DeepCollectionEquality().hash(_oldCat));

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
      final bool isLoadingImage,
      final List<CatEntity> cat,
      final List<CatEntity> oldCat}) = _$InitialImpl;

  @override
  Failure? get failure;
  @override
  bool get isLoading;
  @override
  bool get isLoadingImage;
  @override
  List<CatEntity> get cat;
  @override
  List<CatEntity> get oldCat;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
