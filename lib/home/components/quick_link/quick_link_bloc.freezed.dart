// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quick_link_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$QuickLinkStateTearOff {
  const _$QuickLinkStateTearOff();

// ignore: unused_element
  _Load initial() {
    return _Load();
  }

// ignore: unused_element
  _Loading loading() {
    return _Loading();
  }

// ignore: unused_element
  _Loaded loaded(List<List<QuickLink>> quickLinkGroup) {
    return _Loaded(
      quickLinkGroup,
    );
  }

// ignore: unused_element
  _Fail fail() {
    return _Fail();
  }
}

// ignore: unused_element
const $QuickLinkState = _$QuickLinkStateTearOff();

mixin _$QuickLinkState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<List<QuickLink>> quickLinkGroup),
    @required Result fail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<List<QuickLink>> quickLinkGroup),
    Result fail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Load value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result fail(_Fail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Load value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result fail(_Fail value),
    @required Result orElse(),
  });
}

abstract class $QuickLinkStateCopyWith<$Res> {
  factory $QuickLinkStateCopyWith(
          QuickLinkState value, $Res Function(QuickLinkState) then) =
      _$QuickLinkStateCopyWithImpl<$Res>;
}

class _$QuickLinkStateCopyWithImpl<$Res>
    implements $QuickLinkStateCopyWith<$Res> {
  _$QuickLinkStateCopyWithImpl(this._value, this._then);

  final QuickLinkState _value;
  // ignore: unused_field
  final $Res Function(QuickLinkState) _then;
}

abstract class _$LoadCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) then) =
      __$LoadCopyWithImpl<$Res>;
}

class __$LoadCopyWithImpl<$Res> extends _$QuickLinkStateCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(_Load _value, $Res Function(_Load) _then)
      : super(_value, (v) => _then(v as _Load));

  @override
  _Load get _value => super._value as _Load;
}

class _$_Load implements _Load {
  _$_Load();

  @override
  String toString() {
    return 'QuickLinkState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<List<QuickLink>> quickLinkGroup),
    @required Result fail(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<List<QuickLink>> quickLinkGroup),
    Result fail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Load value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result fail(_Fail value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Load value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result fail(_Fail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Load implements QuickLinkState {
  factory _Load() = _$_Load;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$QuickLinkStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  _$_Loading();

  @override
  String toString() {
    return 'QuickLinkState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<List<QuickLink>> quickLinkGroup),
    @required Result fail(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<List<QuickLink>> quickLinkGroup),
    Result fail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Load value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result fail(_Fail value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Load value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result fail(_Fail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuickLinkState {
  factory _Loading() = _$_Loading;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<List<QuickLink>> quickLinkGroup});
}

class __$LoadedCopyWithImpl<$Res> extends _$QuickLinkStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object quickLinkGroup = freezed,
  }) {
    return _then(_Loaded(
      quickLinkGroup == freezed
          ? _value.quickLinkGroup
          : quickLinkGroup as List<List<QuickLink>>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  _$_Loaded(this.quickLinkGroup) : assert(quickLinkGroup != null);

  @override
  final List<List<QuickLink>> quickLinkGroup;

  @override
  String toString() {
    return 'QuickLinkState.loaded(quickLinkGroup: $quickLinkGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.quickLinkGroup, quickLinkGroup) ||
                const DeepCollectionEquality()
                    .equals(other.quickLinkGroup, quickLinkGroup)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quickLinkGroup);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<List<QuickLink>> quickLinkGroup),
    @required Result fail(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return loaded(quickLinkGroup);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<List<QuickLink>> quickLinkGroup),
    Result fail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(quickLinkGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Load value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result fail(_Fail value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Load value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result fail(_Fail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements QuickLinkState {
  factory _Loaded(List<List<QuickLink>> quickLinkGroup) = _$_Loaded;

  List<List<QuickLink>> get quickLinkGroup;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$FailCopyWith<$Res> {
  factory _$FailCopyWith(_Fail value, $Res Function(_Fail) then) =
      __$FailCopyWithImpl<$Res>;
}

class __$FailCopyWithImpl<$Res> extends _$QuickLinkStateCopyWithImpl<$Res>
    implements _$FailCopyWith<$Res> {
  __$FailCopyWithImpl(_Fail _value, $Res Function(_Fail) _then)
      : super(_value, (v) => _then(v as _Fail));

  @override
  _Fail get _value => super._value as _Fail;
}

class _$_Fail implements _Fail {
  _$_Fail();

  @override
  String toString() {
    return 'QuickLinkState.fail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Fail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<List<QuickLink>> quickLinkGroup),
    @required Result fail(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return fail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<List<QuickLink>> quickLinkGroup),
    Result fail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fail != null) {
      return fail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Load value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result fail(_Fail value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(fail != null);
    return fail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Load value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result fail(_Fail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements QuickLinkState {
  factory _Fail() = _$_Fail;
}
