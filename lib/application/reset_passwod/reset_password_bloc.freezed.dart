// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSendEmail,
    required TResult Function(ResetPasswordState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSendEmail value) onSendEmail,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class _$$_OnSendEmailCopyWith<$Res> {
  factory _$$_OnSendEmailCopyWith(
          _$_OnSendEmail value, $Res Function(_$_OnSendEmail) then) =
      __$$_OnSendEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSendEmailCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$$_OnSendEmailCopyWith<$Res> {
  __$$_OnSendEmailCopyWithImpl(
      _$_OnSendEmail _value, $Res Function(_$_OnSendEmail) _then)
      : super(_value, (v) => _then(v as _$_OnSendEmail));

  @override
  _$_OnSendEmail get _value => super._value as _$_OnSendEmail;
}

/// @nodoc

class _$_OnSendEmail implements _OnSendEmail {
  const _$_OnSendEmail();

  @override
  String toString() {
    return 'ResetPasswordEvent.onSendEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnSendEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSendEmail,
    required TResult Function(ResetPasswordState state) emitFromAnywhere,
  }) {
    return onSendEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
  }) {
    return onSendEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onSendEmail != null) {
      return onSendEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSendEmail value) onSendEmail,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onSendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onSendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onSendEmail != null) {
      return onSendEmail(this);
    }
    return orElse();
  }
}

abstract class _OnSendEmail implements ResetPasswordEvent {
  const factory _OnSendEmail() = _$_OnSendEmail;
}

/// @nodoc
abstract class _$$_EmitFromAnywhereCopyWith<$Res> {
  factory _$$_EmitFromAnywhereCopyWith(
          _$_EmitFromAnywhere value, $Res Function(_$_EmitFromAnywhere) then) =
      __$$_EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({ResetPasswordState state});

  $ResetPasswordStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$_EmitFromAnywhereCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
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
              as ResetPasswordState,
    ));
  }

  @override
  $ResetPasswordStateCopyWith<$Res> get state {
    return $ResetPasswordStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final ResetPasswordState state;

  @override
  String toString() {
    return 'ResetPasswordEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() onSendEmail,
    required TResult Function(ResetPasswordState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSendEmail,
    TResult Function(ResetPasswordState state)? emitFromAnywhere,
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
    required TResult Function(_OnSendEmail value) onSendEmail,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSendEmail value)? onSendEmail,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements ResetPasswordEvent {
  const factory _EmitFromAnywhere({required final ResetPasswordState state}) =
      _$_EmitFromAnywhere;

  ResetPasswordState get state;
  @JsonKey(ignore: true)
  _$$_EmitFromAnywhereCopyWith<_$_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ResetPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get noUse => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  TextEditingController get emailController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      bool noUse,
      bool validateForm,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AuthRepository authRepository,
      TextEditingController emailController});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? noUse = freezed,
    Object? validateForm = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? authRepository = freezed,
    Object? emailController = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: noUse == freezed
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc
abstract class _$$_ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$$_ResetPasswordStateCopyWith(_$_ResetPasswordState value,
          $Res Function(_$_ResetPasswordState) then) =
      __$$_ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccess,
      bool isFailed,
      bool noUse,
      bool validateForm,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AuthRepository authRepository,
      TextEditingController emailController});
}

/// @nodoc
class __$$_ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$$_ResetPasswordStateCopyWith<$Res> {
  __$$_ResetPasswordStateCopyWithImpl(
      _$_ResetPasswordState _value, $Res Function(_$_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordState));

  @override
  _$_ResetPasswordState get _value => super._value as _$_ResetPasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccess = freezed,
    Object? isFailed = freezed,
    Object? noUse = freezed,
    Object? validateForm = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? authRepository = freezed,
    Object? emailController = freezed,
  }) {
    return _then(_$_ResetPasswordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      noUse: noUse == freezed
          ? _value.noUse
          : noUse // ignore: cast_nullable_to_non_nullable
              as bool,
      validateForm: validateForm == freezed
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      emailController: emailController == freezed
          ? _value.emailController
          : emailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.isLoading,
      required this.isSuccess,
      required this.isFailed,
      required this.noUse,
      required this.validateForm,
      required this.errorMessage,
      required this.formKey,
      required this.authRepository,
      required this.emailController});

  @override
  final bool isLoading;
  @override
  final bool isSuccess;
  @override
  final bool isFailed;
  @override
  final bool noUse;
  @override
  final bool validateForm;
  @override
  final String errorMessage;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final AuthRepository authRepository;
  @override
  final TextEditingController emailController;

  @override
  String toString() {
    return 'ResetPasswordState(isLoading: $isLoading, isSuccess: $isSuccess, isFailed: $isFailed, noUse: $noUse, validateForm: $validateForm, errorMessage: $errorMessage, formKey: $formKey, authRepository: $authRepository, emailController: $emailController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isSuccess, isSuccess) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality().equals(other.noUse, noUse) &&
            const DeepCollectionEquality()
                .equals(other.validateForm, validateForm) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.emailController, emailController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccess),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(noUse),
      const DeepCollectionEquality().hash(validateForm),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(emailController));

  @JsonKey(ignore: true)
  @override
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      __$$_ResetPasswordStateCopyWithImpl<_$_ResetPasswordState>(
          this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
          {required final bool isLoading,
          required final bool isSuccess,
          required final bool isFailed,
          required final bool noUse,
          required final bool validateForm,
          required final String errorMessage,
          required final GlobalKey<FormState> formKey,
          required final AuthRepository authRepository,
          required final TextEditingController emailController}) =
      _$_ResetPasswordState;

  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  bool get isFailed;
  @override
  bool get noUse;
  @override
  bool get validateForm;
  @override
  String get errorMessage;
  @override
  GlobalKey<FormState> get formKey;
  @override
  AuthRepository get authRepository;
  @override
  TextEditingController get emailController;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordStateCopyWith<_$_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
