// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Currency {

 String get code; String get name; String get symbol; bool get isDefault;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,isDefault);

@override
String toString() {
  return 'Currency(code: $code, name: $name, symbol: $symbol, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 String code, String name, String symbol, bool isDefault
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? name = null,Object? symbol = null,Object? isDefault = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String symbol,  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.isDefault);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String symbol,  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.code,_that.name,_that.symbol,_that.isDefault);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String symbol,  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc


class _Currency implements Currency {
  const _Currency({required this.code, required this.name, required this.symbol, this.isDefault = false});
  

@override final  String code;
@override final  String name;
@override final  String symbol;
@override@JsonKey() final  bool isDefault;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}


@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,isDefault);

@override
String toString() {
  return 'Currency(code: $code, name: $name, symbol: $symbol, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String symbol, bool isDefault
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? symbol = null,Object? isDefault = null,}) {
  return _then(_Currency(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CurrencyConfig {

 List<Currency> get currencies; Map<String, Map<String, double>> get exchangeRates; String get defaultCurrency;
/// Create a copy of CurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyConfigCopyWith<CurrencyConfig> get copyWith => _$CurrencyConfigCopyWithImpl<CurrencyConfig>(this as CurrencyConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyConfig&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchangeRates, exchangeRates)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchangeRates),defaultCurrency);

@override
String toString() {
  return 'CurrencyConfig(currencies: $currencies, exchangeRates: $exchangeRates, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class $CurrencyConfigCopyWith<$Res>  {
  factory $CurrencyConfigCopyWith(CurrencyConfig value, $Res Function(CurrencyConfig) _then) = _$CurrencyConfigCopyWithImpl;
@useResult
$Res call({
 List<Currency> currencies, Map<String, Map<String, double>> exchangeRates, String defaultCurrency
});




}
/// @nodoc
class _$CurrencyConfigCopyWithImpl<$Res>
    implements $CurrencyConfigCopyWith<$Res> {
  _$CurrencyConfigCopyWithImpl(this._self, this._then);

  final CurrencyConfig _self;
  final $Res Function(CurrencyConfig) _then;

/// Create a copy of CurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencies = null,Object? exchangeRates = null,Object? defaultCurrency = null,}) {
  return _then(_self.copyWith(
currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,exchangeRates: null == exchangeRates ? _self.exchangeRates : exchangeRates // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,defaultCurrency: null == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyConfig].
extension CurrencyConfigPatterns on CurrencyConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyConfig value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Currency> currencies,  Map<String, Map<String, double>> exchangeRates,  String defaultCurrency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyConfig() when $default != null:
return $default(_that.currencies,_that.exchangeRates,_that.defaultCurrency);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Currency> currencies,  Map<String, Map<String, double>> exchangeRates,  String defaultCurrency)  $default,) {final _that = this;
switch (_that) {
case _CurrencyConfig():
return $default(_that.currencies,_that.exchangeRates,_that.defaultCurrency);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Currency> currencies,  Map<String, Map<String, double>> exchangeRates,  String defaultCurrency)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyConfig() when $default != null:
return $default(_that.currencies,_that.exchangeRates,_that.defaultCurrency);case _:
  return null;

}
}

}

/// @nodoc


class _CurrencyConfig implements CurrencyConfig {
  const _CurrencyConfig({final  List<Currency> currencies = const [], final  Map<String, Map<String, double>> exchangeRates = const {}, required this.defaultCurrency}): _currencies = currencies,_exchangeRates = exchangeRates;
  

 final  List<Currency> _currencies;
@override@JsonKey() List<Currency> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}

 final  Map<String, Map<String, double>> _exchangeRates;
@override@JsonKey() Map<String, Map<String, double>> get exchangeRates {
  if (_exchangeRates is EqualUnmodifiableMapView) return _exchangeRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_exchangeRates);
}

@override final  String defaultCurrency;

/// Create a copy of CurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyConfigCopyWith<_CurrencyConfig> get copyWith => __$CurrencyConfigCopyWithImpl<_CurrencyConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyConfig&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchangeRates, _exchangeRates)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchangeRates),defaultCurrency);

@override
String toString() {
  return 'CurrencyConfig(currencies: $currencies, exchangeRates: $exchangeRates, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class _$CurrencyConfigCopyWith<$Res> implements $CurrencyConfigCopyWith<$Res> {
  factory _$CurrencyConfigCopyWith(_CurrencyConfig value, $Res Function(_CurrencyConfig) _then) = __$CurrencyConfigCopyWithImpl;
@override @useResult
$Res call({
 List<Currency> currencies, Map<String, Map<String, double>> exchangeRates, String defaultCurrency
});




}
/// @nodoc
class __$CurrencyConfigCopyWithImpl<$Res>
    implements _$CurrencyConfigCopyWith<$Res> {
  __$CurrencyConfigCopyWithImpl(this._self, this._then);

  final _CurrencyConfig _self;
  final $Res Function(_CurrencyConfig) _then;

/// Create a copy of CurrencyConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencies = null,Object? exchangeRates = null,Object? defaultCurrency = null,}) {
  return _then(_CurrencyConfig(
currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<Currency>,exchangeRates: null == exchangeRates ? _self._exchangeRates : exchangeRates // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,defaultCurrency: null == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ConversionResult {

 double get amount; String get from; String get to; double get converted; double get rate;
/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversionResultCopyWith<ConversionResult> get copyWith => _$ConversionResultCopyWithImpl<ConversionResult>(this as ConversionResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversionResult&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.converted, converted) || other.converted == converted)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,amount,from,to,converted,rate);

@override
String toString() {
  return 'ConversionResult(amount: $amount, from: $from, to: $to, converted: $converted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $ConversionResultCopyWith<$Res>  {
  factory $ConversionResultCopyWith(ConversionResult value, $Res Function(ConversionResult) _then) = _$ConversionResultCopyWithImpl;
@useResult
$Res call({
 double amount, String from, String to, double converted, double rate
});




}
/// @nodoc
class _$ConversionResultCopyWithImpl<$Res>
    implements $ConversionResultCopyWith<$Res> {
  _$ConversionResultCopyWithImpl(this._self, this._then);

  final ConversionResult _self;
  final $Res Function(ConversionResult) _then;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? from = null,Object? to = null,Object? converted = null,Object? rate = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,converted: null == converted ? _self.converted : converted // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversionResult].
extension ConversionResultPatterns on ConversionResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversionResult value)  $default,){
final _that = this;
switch (_that) {
case _ConversionResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversionResult value)?  $default,){
final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String from,  String to,  double converted,  double rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that.amount,_that.from,_that.to,_that.converted,_that.rate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String from,  String to,  double converted,  double rate)  $default,) {final _that = this;
switch (_that) {
case _ConversionResult():
return $default(_that.amount,_that.from,_that.to,_that.converted,_that.rate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String from,  String to,  double converted,  double rate)?  $default,) {final _that = this;
switch (_that) {
case _ConversionResult() when $default != null:
return $default(_that.amount,_that.from,_that.to,_that.converted,_that.rate);case _:
  return null;

}
}

}

/// @nodoc


class _ConversionResult implements ConversionResult {
  const _ConversionResult({required this.amount, required this.from, required this.to, required this.converted, required this.rate});
  

@override final  double amount;
@override final  String from;
@override final  String to;
@override final  double converted;
@override final  double rate;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversionResultCopyWith<_ConversionResult> get copyWith => __$ConversionResultCopyWithImpl<_ConversionResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversionResult&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.converted, converted) || other.converted == converted)&&(identical(other.rate, rate) || other.rate == rate));
}


@override
int get hashCode => Object.hash(runtimeType,amount,from,to,converted,rate);

@override
String toString() {
  return 'ConversionResult(amount: $amount, from: $from, to: $to, converted: $converted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$ConversionResultCopyWith<$Res> implements $ConversionResultCopyWith<$Res> {
  factory _$ConversionResultCopyWith(_ConversionResult value, $Res Function(_ConversionResult) _then) = __$ConversionResultCopyWithImpl;
@override @useResult
$Res call({
 double amount, String from, String to, double converted, double rate
});




}
/// @nodoc
class __$ConversionResultCopyWithImpl<$Res>
    implements _$ConversionResultCopyWith<$Res> {
  __$ConversionResultCopyWithImpl(this._self, this._then);

  final _ConversionResult _self;
  final $Res Function(_ConversionResult) _then;

/// Create a copy of ConversionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? from = null,Object? to = null,Object? converted = null,Object? rate = null,}) {
  return _then(_ConversionResult(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,from: null == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String,to: null == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String,converted: null == converted ? _self.converted : converted // ignore: cast_nullable_to_non_nullable
as double,rate: null == rate ? _self.rate : rate // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
