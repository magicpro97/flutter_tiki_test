// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return _Initial();
  }

// ignore: unused_element
  _BannersLoaded bannersLoaded(List<Banner> banners) {
    return _BannersLoaded(
      banners,
    );
  }

// ignore: unused_element
  _QuickLinksLoaded quickLinksLoaded(List<List<QuickLink>> quickLinkGroups) {
    return _QuickLinksLoaded(
      quickLinkGroups,
    );
  }

// ignore: unused_element
  _FlashSalesLoaded flashSalesLoaded(List<FlashSale> flashSales) {
    return _FlashSalesLoaded(
      flashSales,
    );
  }

// ignore: unused_element
  _LoadedFail loadedFail() {
    return _LoadedFail();
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
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
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  factory _Initial() = _$_Initial;
}

abstract class _$BannersLoadedCopyWith<$Res> {
  factory _$BannersLoadedCopyWith(
          _BannersLoaded value, $Res Function(_BannersLoaded) then) =
      __$BannersLoadedCopyWithImpl<$Res>;
  $Res call({List<Banner> banners});
}

class __$BannersLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$BannersLoadedCopyWith<$Res> {
  __$BannersLoadedCopyWithImpl(
      _BannersLoaded _value, $Res Function(_BannersLoaded) _then)
      : super(_value, (v) => _then(v as _BannersLoaded));

  @override
  _BannersLoaded get _value => super._value as _BannersLoaded;

  @override
  $Res call({
    Object banners = freezed,
  }) {
    return _then(_BannersLoaded(
      banners == freezed ? _value.banners : banners as List<Banner>,
    ));
  }
}

class _$_BannersLoaded implements _BannersLoaded {
  _$_BannersLoaded(this.banners) : assert(banners != null);

  @override
  final List<Banner> banners;

  @override
  String toString() {
    return 'HomeState.bannersLoaded(banners: $banners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannersLoaded &&
            (identical(other.banners, banners) ||
                const DeepCollectionEquality().equals(other.banners, banners)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(banners);

  @override
  _$BannersLoadedCopyWith<_BannersLoaded> get copyWith =>
      __$BannersLoadedCopyWithImpl<_BannersLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return bannersLoaded(banners);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bannersLoaded != null) {
      return bannersLoaded(banners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return bannersLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bannersLoaded != null) {
      return bannersLoaded(this);
    }
    return orElse();
  }
}

abstract class _BannersLoaded implements HomeState {
  factory _BannersLoaded(List<Banner> banners) = _$_BannersLoaded;

  List<Banner> get banners;
  _$BannersLoadedCopyWith<_BannersLoaded> get copyWith;
}

abstract class _$QuickLinksLoadedCopyWith<$Res> {
  factory _$QuickLinksLoadedCopyWith(
          _QuickLinksLoaded value, $Res Function(_QuickLinksLoaded) then) =
      __$QuickLinksLoadedCopyWithImpl<$Res>;
  $Res call({List<List<QuickLink>> quickLinkGroups});
}

class __$QuickLinksLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$QuickLinksLoadedCopyWith<$Res> {
  __$QuickLinksLoadedCopyWithImpl(
      _QuickLinksLoaded _value, $Res Function(_QuickLinksLoaded) _then)
      : super(_value, (v) => _then(v as _QuickLinksLoaded));

  @override
  _QuickLinksLoaded get _value => super._value as _QuickLinksLoaded;

  @override
  $Res call({
    Object quickLinkGroups = freezed,
  }) {
    return _then(_QuickLinksLoaded(
      quickLinkGroups == freezed
          ? _value.quickLinkGroups
          : quickLinkGroups as List<List<QuickLink>>,
    ));
  }
}

class _$_QuickLinksLoaded implements _QuickLinksLoaded {
  _$_QuickLinksLoaded(this.quickLinkGroups) : assert(quickLinkGroups != null);

  @override
  final List<List<QuickLink>> quickLinkGroups;

  @override
  String toString() {
    return 'HomeState.quickLinksLoaded(quickLinkGroups: $quickLinkGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuickLinksLoaded &&
            (identical(other.quickLinkGroups, quickLinkGroups) ||
                const DeepCollectionEquality()
                    .equals(other.quickLinkGroups, quickLinkGroups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quickLinkGroups);

  @override
  _$QuickLinksLoadedCopyWith<_QuickLinksLoaded> get copyWith =>
      __$QuickLinksLoadedCopyWithImpl<_QuickLinksLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return quickLinksLoaded(quickLinkGroups);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quickLinksLoaded != null) {
      return quickLinksLoaded(quickLinkGroups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return quickLinksLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quickLinksLoaded != null) {
      return quickLinksLoaded(this);
    }
    return orElse();
  }
}

abstract class _QuickLinksLoaded implements HomeState {
  factory _QuickLinksLoaded(List<List<QuickLink>> quickLinkGroups) =
      _$_QuickLinksLoaded;

  List<List<QuickLink>> get quickLinkGroups;
  _$QuickLinksLoadedCopyWith<_QuickLinksLoaded> get copyWith;
}

abstract class _$FlashSalesLoadedCopyWith<$Res> {
  factory _$FlashSalesLoadedCopyWith(
          _FlashSalesLoaded value, $Res Function(_FlashSalesLoaded) then) =
      __$FlashSalesLoadedCopyWithImpl<$Res>;
  $Res call({List<FlashSale> flashSales});
}

class __$FlashSalesLoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$FlashSalesLoadedCopyWith<$Res> {
  __$FlashSalesLoadedCopyWithImpl(
      _FlashSalesLoaded _value, $Res Function(_FlashSalesLoaded) _then)
      : super(_value, (v) => _then(v as _FlashSalesLoaded));

  @override
  _FlashSalesLoaded get _value => super._value as _FlashSalesLoaded;

  @override
  $Res call({
    Object flashSales = freezed,
  }) {
    return _then(_FlashSalesLoaded(
      flashSales == freezed ? _value.flashSales : flashSales as List<FlashSale>,
    ));
  }
}

class _$_FlashSalesLoaded implements _FlashSalesLoaded {
  _$_FlashSalesLoaded(this.flashSales) : assert(flashSales != null);

  @override
  final List<FlashSale> flashSales;

  @override
  String toString() {
    return 'HomeState.flashSalesLoaded(flashSales: $flashSales)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlashSalesLoaded &&
            (identical(other.flashSales, flashSales) ||
                const DeepCollectionEquality()
                    .equals(other.flashSales, flashSales)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(flashSales);

  @override
  _$FlashSalesLoadedCopyWith<_FlashSalesLoaded> get copyWith =>
      __$FlashSalesLoadedCopyWithImpl<_FlashSalesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return flashSalesLoaded(flashSales);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flashSalesLoaded != null) {
      return flashSalesLoaded(flashSales);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return flashSalesLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flashSalesLoaded != null) {
      return flashSalesLoaded(this);
    }
    return orElse();
  }
}

abstract class _FlashSalesLoaded implements HomeState {
  factory _FlashSalesLoaded(List<FlashSale> flashSales) = _$_FlashSalesLoaded;

  List<FlashSale> get flashSales;
  _$FlashSalesLoadedCopyWith<_FlashSalesLoaded> get copyWith;
}

abstract class _$LoadedFailCopyWith<$Res> {
  factory _$LoadedFailCopyWith(
          _LoadedFail value, $Res Function(_LoadedFail) then) =
      __$LoadedFailCopyWithImpl<$Res>;
}

class __$LoadedFailCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadedFailCopyWith<$Res> {
  __$LoadedFailCopyWithImpl(
      _LoadedFail _value, $Res Function(_LoadedFail) _then)
      : super(_value, (v) => _then(v as _LoadedFail));

  @override
  _LoadedFail get _value => super._value as _LoadedFail;
}

class _$_LoadedFail implements _LoadedFail {
  _$_LoadedFail();

  @override
  String toString() {
    return 'HomeState.loadedFail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadedFail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result bannersLoaded(List<Banner> banners),
    @required Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    @required Result flashSalesLoaded(List<FlashSale> flashSales),
    @required Result loadedFail(),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return loadedFail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result bannersLoaded(List<Banner> banners),
    Result quickLinksLoaded(List<List<QuickLink>> quickLinkGroups),
    Result flashSalesLoaded(List<FlashSale> flashSales),
    Result loadedFail(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedFail != null) {
      return loadedFail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result bannersLoaded(_BannersLoaded value),
    @required Result quickLinksLoaded(_QuickLinksLoaded value),
    @required Result flashSalesLoaded(_FlashSalesLoaded value),
    @required Result loadedFail(_LoadedFail value),
  }) {
    assert(initial != null);
    assert(bannersLoaded != null);
    assert(quickLinksLoaded != null);
    assert(flashSalesLoaded != null);
    assert(loadedFail != null);
    return loadedFail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result bannersLoaded(_BannersLoaded value),
    Result quickLinksLoaded(_QuickLinksLoaded value),
    Result flashSalesLoaded(_FlashSalesLoaded value),
    Result loadedFail(_LoadedFail value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadedFail != null) {
      return loadedFail(this);
    }
    return orElse();
  }
}

abstract class _LoadedFail implements HomeState {
  factory _LoadedFail() = _$_LoadedFail;
}
