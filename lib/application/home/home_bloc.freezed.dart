// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onload,
    required TResult Function(String selectedTime) onChangeTrendingTime,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Onload value) onload,
    required TResult Function(_OnChangeTrendingTime value) onChangeTrendingTime,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, (v) => _then(v as _$_Init));

  @override
  _$_Init get _value => super._value as _$_Init;
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onload,
    required TResult Function(String selectedTime) onChangeTrendingTime,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Onload value) onload,
    required TResult Function(_OnChangeTrendingTime value) onChangeTrendingTime,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements HomeEvent {
  const factory _Init() = _$_Init;
}

/// @nodoc
abstract class _$$_OnloadCopyWith<$Res> {
  factory _$$_OnloadCopyWith(_$_Onload value, $Res Function(_$_Onload) then) =
      __$$_OnloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnloadCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_OnloadCopyWith<$Res> {
  __$$_OnloadCopyWithImpl(_$_Onload _value, $Res Function(_$_Onload) _then)
      : super(_value, (v) => _then(v as _$_Onload));

  @override
  _$_Onload get _value => super._value as _$_Onload;
}

/// @nodoc

class _$_Onload implements _Onload {
  const _$_Onload();

  @override
  String toString() {
    return 'HomeEvent.onload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Onload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onload,
    required TResult Function(String selectedTime) onChangeTrendingTime,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return onload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
  }) {
    return onload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onload != null) {
      return onload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Onload value) onload,
    required TResult Function(_OnChangeTrendingTime value) onChangeTrendingTime,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onload != null) {
      return onload(this);
    }
    return orElse();
  }
}

abstract class _Onload implements HomeEvent {
  const factory _Onload() = _$_Onload;
}

/// @nodoc
abstract class _$$_OnChangeTrendingTimeCopyWith<$Res> {
  factory _$$_OnChangeTrendingTimeCopyWith(_$_OnChangeTrendingTime value,
          $Res Function(_$_OnChangeTrendingTime) then) =
      __$$_OnChangeTrendingTimeCopyWithImpl<$Res>;
  $Res call({String selectedTime});
}

/// @nodoc
class __$$_OnChangeTrendingTimeCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_OnChangeTrendingTimeCopyWith<$Res> {
  __$$_OnChangeTrendingTimeCopyWithImpl(_$_OnChangeTrendingTime _value,
      $Res Function(_$_OnChangeTrendingTime) _then)
      : super(_value, (v) => _then(v as _$_OnChangeTrendingTime));

  @override
  _$_OnChangeTrendingTime get _value => super._value as _$_OnChangeTrendingTime;

  @override
  $Res call({
    Object? selectedTime = freezed,
  }) {
    return _then(_$_OnChangeTrendingTime(
      selectedTime: selectedTime == freezed
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnChangeTrendingTime implements _OnChangeTrendingTime {
  const _$_OnChangeTrendingTime({required this.selectedTime});

  @override
  final String selectedTime;

  @override
  String toString() {
    return 'HomeEvent.onChangeTrendingTime(selectedTime: $selectedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChangeTrendingTime &&
            const DeepCollectionEquality()
                .equals(other.selectedTime, selectedTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedTime));

  @JsonKey(ignore: true)
  @override
  _$$_OnChangeTrendingTimeCopyWith<_$_OnChangeTrendingTime> get copyWith =>
      __$$_OnChangeTrendingTimeCopyWithImpl<_$_OnChangeTrendingTime>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onload,
    required TResult Function(String selectedTime) onChangeTrendingTime,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return onChangeTrendingTime(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
  }) {
    return onChangeTrendingTime?.call(selectedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onChangeTrendingTime != null) {
      return onChangeTrendingTime(selectedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Onload value) onload,
    required TResult Function(_OnChangeTrendingTime value) onChangeTrendingTime,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onChangeTrendingTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onChangeTrendingTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onChangeTrendingTime != null) {
      return onChangeTrendingTime(this);
    }
    return orElse();
  }
}

abstract class _OnChangeTrendingTime implements HomeEvent {
  const factory _OnChangeTrendingTime({required final String selectedTime}) =
      _$_OnChangeTrendingTime;

  String get selectedTime;
  @JsonKey(ignore: true)
  _$$_OnChangeTrendingTimeCopyWith<_$_OnChangeTrendingTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({HomeState state});

  $HomeStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$_EmitFromAnywhereCopyWith<$Res> {
  __$$_EmitFromAnywhereCopyWithImpl(
      _$_EmitFromAnywhere _value, $Res Function(_$_EmitFromAnywhere) _then)
      : super(_value, (v) => _then(v as _$_EmitFromAnywhere));

  @override
  _$_EmitFromAnywhere get _value => super._value as _$_EmitFromAnywhere;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_$_EmitFromAnywhere(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HomeState,
    ));
  }

  @override
  $HomeStateCopyWith<$Res> get state {
    return $HomeStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final HomeState state;

  @override
  String toString() {
    return 'HomeEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmitFromAnywhere &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      __$$_EmitFromAnywhereCopyWithImpl<_$_EmitFromAnywhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() onload,
    required TResult Function(String selectedTime) onChangeTrendingTime,
    required TResult Function(HomeState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? onload,
    TResult Function(String selectedTime)? onChangeTrendingTime,
    TResult Function(HomeState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Onload value) onload,
    required TResult Function(_OnChangeTrendingTime value) onChangeTrendingTime,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Onload value)? onload,
    TResult Function(_OnChangeTrendingTime value)? onChangeTrendingTime,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements HomeEvent {
  const factory _EmitFromAnywhere({required final HomeState state}) =
      _$_EmitFromAnywhere;

  HomeState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isFailed => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get noUse => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingTrendingSection => throw _privateConstructorUsedError;
  List<TrendingDataDto> get lsOfTrending => throw _privateConstructorUsedError;
  List<String> get trendingDropdownList => throw _privateConstructorUsedError;
  String get selectedTrendingValue => throw _privateConstructorUsedError;
  TMDBRepository get tmdbRepository => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isFailed,
      bool isSuccess,
      bool noUse,
      bool isLoading,
      bool isLoadingTrendingSection,
      List<TrendingDataDto> lsOfTrending,
      List<String> trendingDropdownList,
      String selectedTrendingValue,
      TMDBRepository tmdbRepository,
      String errorMessage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isFailed = freezed,
    Object? isSuccess = freezed,
    Object? noUse = freezed,
    Object? isLoading = freezed,
    Object? isLoadingTrendingSection = freezed,
    Object? lsOfTrending = freezed,
    Object? trendingDropdownList = freezed,
    Object? selectedTrendingValue = freezed,
    Object? tmdbRepository = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: noUse == freezed
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTrendingSection: isLoadingTrendingSection == freezed
          ? _value.isLoadingTrendingSection
          : isLoadingTrendingSection // ignore: cast_nullable_to_non_nullable
              as bool,
      lsOfTrending: lsOfTrending == freezed
          ? _value.lsOfTrending
          : lsOfTrending // ignore: cast_nullable_to_non_nullable
              as List<TrendingDataDto>,
      trendingDropdownList: trendingDropdownList == freezed
          ? _value.trendingDropdownList
          : trendingDropdownList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTrendingValue: selectedTrendingValue == freezed
          ? _value.selectedTrendingValue
          : selectedTrendingValue // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbRepository: tmdbRepository == freezed
          ? _value.tmdbRepository
          : tmdbRepository // ignore: cast_nullable_to_non_nullable
              as TMDBRepository,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isFailed,
      bool isSuccess,
      bool noUse,
      bool isLoading,
      bool isLoadingTrendingSection,
      List<TrendingDataDto> lsOfTrending,
      List<String> trendingDropdownList,
      String selectedTrendingValue,
      TMDBRepository tmdbRepository,
      String errorMessage});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? isFailed = freezed,
    Object? isSuccess = freezed,
    Object? noUse = freezed,
    Object? isLoading = freezed,
    Object? isLoadingTrendingSection = freezed,
    Object? lsOfTrending = freezed,
    Object? trendingDropdownList = freezed,
    Object? selectedTrendingValue = freezed,
    Object? tmdbRepository = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_HomeState(
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: noUse == freezed
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTrendingSection: isLoadingTrendingSection == freezed
          ? _value.isLoadingTrendingSection
          : isLoadingTrendingSection // ignore: cast_nullable_to_non_nullable
              as bool,
      lsOfTrending: lsOfTrending == freezed
          ? _value._lsOfTrending
          : lsOfTrending // ignore: cast_nullable_to_non_nullable
              as List<TrendingDataDto>,
      trendingDropdownList: trendingDropdownList == freezed
          ? _value._trendingDropdownList
          : trendingDropdownList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedTrendingValue: selectedTrendingValue == freezed
          ? _value.selectedTrendingValue
          : selectedTrendingValue // ignore: cast_nullable_to_non_nullable
              as String,
      tmdbRepository: tmdbRepository == freezed
          ? _value.tmdbRepository
          : tmdbRepository // ignore: cast_nullable_to_non_nullable
              as TMDBRepository,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required this.isFailed,
      required this.isSuccess,
      required this.noUse,
      required this.isLoading,
      required this.isLoadingTrendingSection,
      required final List<TrendingDataDto> lsOfTrending,
      required final List<String> trendingDropdownList,
      required this.selectedTrendingValue,
      required this.tmdbRepository,
      required this.errorMessage})
      : _lsOfTrending = lsOfTrending,
        _trendingDropdownList = trendingDropdownList;

  @override
  final bool isFailed;
  @override
  final bool isSuccess;
  @override
  final bool noUse;
  @override
  final bool isLoading;
  @override
  final bool isLoadingTrendingSection;
  final List<TrendingDataDto> _lsOfTrending;
  @override
  List<TrendingDataDto> get lsOfTrending {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lsOfTrending);
  }

  final List<String> _trendingDropdownList;
  @override
  List<String> get trendingDropdownList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingDropdownList);
  }

  @override
  final String selectedTrendingValue;
  @override
  final TMDBRepository tmdbRepository;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HomeState(isFailed: $isFailed, isSuccess: $isSuccess, noUse: $noUse, isLoading: $isLoading, isLoadingTrendingSection: $isLoadingTrendingSection, lsOfTrending: $lsOfTrending, trendingDropdownList: $trendingDropdownList, selectedTrendingValue: $selectedTrendingValue, tmdbRepository: $tmdbRepository, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.noUse, noUse) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.isLoadingTrendingSection, isLoadingTrendingSection) &&
            const DeepCollectionEquality()
                .equals(other._lsOfTrending, _lsOfTrending) &&
            const DeepCollectionEquality()
                .equals(other._trendingDropdownList, _trendingDropdownList) &&
            const DeepCollectionEquality()
                .equals(other.selectedTrendingValue, selectedTrendingValue) &&
            const DeepCollectionEquality()
                .equals(other.tmdbRepository, tmdbRepository) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(noUse),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingTrendingSection),
      const DeepCollectionEquality().hash(_lsOfTrending),
      const DeepCollectionEquality().hash(_trendingDropdownList),
      const DeepCollectionEquality().hash(selectedTrendingValue),
      const DeepCollectionEquality().hash(tmdbRepository),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isFailed,
      required final bool isSuccess,
      required final bool noUse,
      required final bool isLoading,
      required final bool isLoadingTrendingSection,
      required final List<TrendingDataDto> lsOfTrending,
      required final List<String> trendingDropdownList,
      required final String selectedTrendingValue,
      required final TMDBRepository tmdbRepository,
      required final String errorMessage}) = _$_HomeState;

  @override
  bool get isFailed;
  @override
  bool get isSuccess;
  @override
  bool get noUse;
  @override
  bool get isLoading;
  @override
  bool get isLoadingTrendingSection;
  @override
  List<TrendingDataDto> get lsOfTrending;
  @override
  List<String> get trendingDropdownList;
  @override
  String get selectedTrendingValue;
  @override
  TMDBRepository get tmdbRepository;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
