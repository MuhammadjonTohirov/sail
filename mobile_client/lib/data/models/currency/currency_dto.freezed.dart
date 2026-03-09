// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrencyDto {

 String get code; String get name; String get symbol;@JsonKey(name: 'is_default') bool get isDefault;
/// Create a copy of CurrencyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyDtoCopyWith<CurrencyDto> get copyWith => _$CurrencyDtoCopyWithImpl<CurrencyDto>(this as CurrencyDto, _$identity);

  /// Serializes this CurrencyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyDto&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,isDefault);

@override
String toString() {
  return 'CurrencyDto(code: $code, name: $name, symbol: $symbol, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class $CurrencyDtoCopyWith<$Res>  {
  factory $CurrencyDtoCopyWith(CurrencyDto value, $Res Function(CurrencyDto) _then) = _$CurrencyDtoCopyWithImpl;
@useResult
$Res call({
 String code, String name, String symbol,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class _$CurrencyDtoCopyWithImpl<$Res>
    implements $CurrencyDtoCopyWith<$Res> {
  _$CurrencyDtoCopyWithImpl(this._self, this._then);

  final CurrencyDto _self;
  final $Res Function(CurrencyDto) _then;

/// Create a copy of CurrencyDto
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


/// Adds pattern-matching-related methods to [CurrencyDto].
extension CurrencyDtoPatterns on CurrencyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyDto value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyDto value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String name,  String symbol, @JsonKey(name: 'is_default')  bool isDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String name,  String symbol, @JsonKey(name: 'is_default')  bool isDefault)  $default,) {final _that = this;
switch (_that) {
case _CurrencyDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String name,  String symbol, @JsonKey(name: 'is_default')  bool isDefault)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyDto() when $default != null:
return $default(_that.code,_that.name,_that.symbol,_that.isDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyDto implements CurrencyDto {
  const _CurrencyDto({required this.code, required this.name, required this.symbol, @JsonKey(name: 'is_default') this.isDefault = false});
  factory _CurrencyDto.fromJson(Map<String, dynamic> json) => _$CurrencyDtoFromJson(json);

@override final  String code;
@override final  String name;
@override final  String symbol;
@override@JsonKey(name: 'is_default') final  bool isDefault;

/// Create a copy of CurrencyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyDtoCopyWith<_CurrencyDto> get copyWith => __$CurrencyDtoCopyWithImpl<_CurrencyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyDto&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,name,symbol,isDefault);

@override
String toString() {
  return 'CurrencyDto(code: $code, name: $name, symbol: $symbol, isDefault: $isDefault)';
}


}

/// @nodoc
abstract mixin class _$CurrencyDtoCopyWith<$Res> implements $CurrencyDtoCopyWith<$Res> {
  factory _$CurrencyDtoCopyWith(_CurrencyDto value, $Res Function(_CurrencyDto) _then) = __$CurrencyDtoCopyWithImpl;
@override @useResult
$Res call({
 String code, String name, String symbol,@JsonKey(name: 'is_default') bool isDefault
});




}
/// @nodoc
class __$CurrencyDtoCopyWithImpl<$Res>
    implements _$CurrencyDtoCopyWith<$Res> {
  __$CurrencyDtoCopyWithImpl(this._self, this._then);

  final _CurrencyDto _self;
  final $Res Function(_CurrencyDto) _then;

/// Create a copy of CurrencyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? name = null,Object? symbol = null,Object? isDefault = null,}) {
  return _then(_CurrencyDto(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CurrencyConfigDto {

 List<CurrencyDto> get currencies;@JsonKey(name: 'exchange_rates') Map<String, Map<String, double>> get exchangeRates;@JsonKey(name: 'default_currency') String get defaultCurrency;
/// Create a copy of CurrencyConfigDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyConfigDtoCopyWith<CurrencyConfigDto> get copyWith => _$CurrencyConfigDtoCopyWithImpl<CurrencyConfigDto>(this as CurrencyConfigDto, _$identity);

  /// Serializes this CurrencyConfigDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrencyConfigDto&&const DeepCollectionEquality().equals(other.currencies, currencies)&&const DeepCollectionEquality().equals(other.exchangeRates, exchangeRates)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currencies),const DeepCollectionEquality().hash(exchangeRates),defaultCurrency);

@override
String toString() {
  return 'CurrencyConfigDto(currencies: $currencies, exchangeRates: $exchangeRates, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class $CurrencyConfigDtoCopyWith<$Res>  {
  factory $CurrencyConfigDtoCopyWith(CurrencyConfigDto value, $Res Function(CurrencyConfigDto) _then) = _$CurrencyConfigDtoCopyWithImpl;
@useResult
$Res call({
 List<CurrencyDto> currencies,@JsonKey(name: 'exchange_rates') Map<String, Map<String, double>> exchangeRates,@JsonKey(name: 'default_currency') String defaultCurrency
});




}
/// @nodoc
class _$CurrencyConfigDtoCopyWithImpl<$Res>
    implements $CurrencyConfigDtoCopyWith<$Res> {
  _$CurrencyConfigDtoCopyWithImpl(this._self, this._then);

  final CurrencyConfigDto _self;
  final $Res Function(CurrencyConfigDto) _then;

/// Create a copy of CurrencyConfigDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currencies = null,Object? exchangeRates = null,Object? defaultCurrency = null,}) {
  return _then(_self.copyWith(
currencies: null == currencies ? _self.currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<CurrencyDto>,exchangeRates: null == exchangeRates ? _self.exchangeRates : exchangeRates // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,defaultCurrency: null == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrencyConfigDto].
extension CurrencyConfigDtoPatterns on CurrencyConfigDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrencyConfigDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrencyConfigDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrencyConfigDto value)  $default,){
final _that = this;
switch (_that) {
case _CurrencyConfigDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrencyConfigDto value)?  $default,){
final _that = this;
switch (_that) {
case _CurrencyConfigDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CurrencyDto> currencies, @JsonKey(name: 'exchange_rates')  Map<String, Map<String, double>> exchangeRates, @JsonKey(name: 'default_currency')  String defaultCurrency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrencyConfigDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CurrencyDto> currencies, @JsonKey(name: 'exchange_rates')  Map<String, Map<String, double>> exchangeRates, @JsonKey(name: 'default_currency')  String defaultCurrency)  $default,) {final _that = this;
switch (_that) {
case _CurrencyConfigDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CurrencyDto> currencies, @JsonKey(name: 'exchange_rates')  Map<String, Map<String, double>> exchangeRates, @JsonKey(name: 'default_currency')  String defaultCurrency)?  $default,) {final _that = this;
switch (_that) {
case _CurrencyConfigDto() when $default != null:
return $default(_that.currencies,_that.exchangeRates,_that.defaultCurrency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrencyConfigDto implements CurrencyConfigDto {
  const _CurrencyConfigDto({final  List<CurrencyDto> currencies = const [], @JsonKey(name: 'exchange_rates') final  Map<String, Map<String, double>> exchangeRates = const {}, @JsonKey(name: 'default_currency') required this.defaultCurrency}): _currencies = currencies,_exchangeRates = exchangeRates;
  factory _CurrencyConfigDto.fromJson(Map<String, dynamic> json) => _$CurrencyConfigDtoFromJson(json);

 final  List<CurrencyDto> _currencies;
@override@JsonKey() List<CurrencyDto> get currencies {
  if (_currencies is EqualUnmodifiableListView) return _currencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencies);
}

 final  Map<String, Map<String, double>> _exchangeRates;
@override@JsonKey(name: 'exchange_rates') Map<String, Map<String, double>> get exchangeRates {
  if (_exchangeRates is EqualUnmodifiableMapView) return _exchangeRates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_exchangeRates);
}

@override@JsonKey(name: 'default_currency') final  String defaultCurrency;

/// Create a copy of CurrencyConfigDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyConfigDtoCopyWith<_CurrencyConfigDto> get copyWith => __$CurrencyConfigDtoCopyWithImpl<_CurrencyConfigDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyConfigDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrencyConfigDto&&const DeepCollectionEquality().equals(other._currencies, _currencies)&&const DeepCollectionEquality().equals(other._exchangeRates, _exchangeRates)&&(identical(other.defaultCurrency, defaultCurrency) || other.defaultCurrency == defaultCurrency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currencies),const DeepCollectionEquality().hash(_exchangeRates),defaultCurrency);

@override
String toString() {
  return 'CurrencyConfigDto(currencies: $currencies, exchangeRates: $exchangeRates, defaultCurrency: $defaultCurrency)';
}


}

/// @nodoc
abstract mixin class _$CurrencyConfigDtoCopyWith<$Res> implements $CurrencyConfigDtoCopyWith<$Res> {
  factory _$CurrencyConfigDtoCopyWith(_CurrencyConfigDto value, $Res Function(_CurrencyConfigDto) _then) = __$CurrencyConfigDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CurrencyDto> currencies,@JsonKey(name: 'exchange_rates') Map<String, Map<String, double>> exchangeRates,@JsonKey(name: 'default_currency') String defaultCurrency
});




}
/// @nodoc
class __$CurrencyConfigDtoCopyWithImpl<$Res>
    implements _$CurrencyConfigDtoCopyWith<$Res> {
  __$CurrencyConfigDtoCopyWithImpl(this._self, this._then);

  final _CurrencyConfigDto _self;
  final $Res Function(_CurrencyConfigDto) _then;

/// Create a copy of CurrencyConfigDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currencies = null,Object? exchangeRates = null,Object? defaultCurrency = null,}) {
  return _then(_CurrencyConfigDto(
currencies: null == currencies ? _self._currencies : currencies // ignore: cast_nullable_to_non_nullable
as List<CurrencyDto>,exchangeRates: null == exchangeRates ? _self._exchangeRates : exchangeRates // ignore: cast_nullable_to_non_nullable
as Map<String, Map<String, double>>,defaultCurrency: null == defaultCurrency ? _self.defaultCurrency : defaultCurrency // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ConversionResultDto {

 double get amount; String get from; String get to; double get converted; double get rate;
/// Create a copy of ConversionResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversionResultDtoCopyWith<ConversionResultDto> get copyWith => _$ConversionResultDtoCopyWithImpl<ConversionResultDto>(this as ConversionResultDto, _$identity);

  /// Serializes this ConversionResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversionResultDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.converted, converted) || other.converted == converted)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,to,converted,rate);

@override
String toString() {
  return 'ConversionResultDto(amount: $amount, from: $from, to: $to, converted: $converted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class $ConversionResultDtoCopyWith<$Res>  {
  factory $ConversionResultDtoCopyWith(ConversionResultDto value, $Res Function(ConversionResultDto) _then) = _$ConversionResultDtoCopyWithImpl;
@useResult
$Res call({
 double amount, String from, String to, double converted, double rate
});




}
/// @nodoc
class _$ConversionResultDtoCopyWithImpl<$Res>
    implements $ConversionResultDtoCopyWith<$Res> {
  _$ConversionResultDtoCopyWithImpl(this._self, this._then);

  final ConversionResultDto _self;
  final $Res Function(ConversionResultDto) _then;

/// Create a copy of ConversionResultDto
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


/// Adds pattern-matching-related methods to [ConversionResultDto].
extension ConversionResultDtoPatterns on ConversionResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversionResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversionResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversionResultDto value)  $default,){
final _that = this;
switch (_that) {
case _ConversionResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversionResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _ConversionResultDto() when $default != null:
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
case _ConversionResultDto() when $default != null:
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
case _ConversionResultDto():
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
case _ConversionResultDto() when $default != null:
return $default(_that.amount,_that.from,_that.to,_that.converted,_that.rate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversionResultDto implements ConversionResultDto {
  const _ConversionResultDto({required this.amount, required this.from, required this.to, required this.converted, required this.rate});
  factory _ConversionResultDto.fromJson(Map<String, dynamic> json) => _$ConversionResultDtoFromJson(json);

@override final  double amount;
@override final  String from;
@override final  String to;
@override final  double converted;
@override final  double rate;

/// Create a copy of ConversionResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversionResultDtoCopyWith<_ConversionResultDto> get copyWith => __$ConversionResultDtoCopyWithImpl<_ConversionResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversionResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversionResultDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to)&&(identical(other.converted, converted) || other.converted == converted)&&(identical(other.rate, rate) || other.rate == rate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,from,to,converted,rate);

@override
String toString() {
  return 'ConversionResultDto(amount: $amount, from: $from, to: $to, converted: $converted, rate: $rate)';
}


}

/// @nodoc
abstract mixin class _$ConversionResultDtoCopyWith<$Res> implements $ConversionResultDtoCopyWith<$Res> {
  factory _$ConversionResultDtoCopyWith(_ConversionResultDto value, $Res Function(_ConversionResultDto) _then) = __$ConversionResultDtoCopyWithImpl;
@override @useResult
$Res call({
 double amount, String from, String to, double converted, double rate
});




}
/// @nodoc
class __$ConversionResultDtoCopyWithImpl<$Res>
    implements _$ConversionResultDtoCopyWith<$Res> {
  __$ConversionResultDtoCopyWithImpl(this._self, this._then);

  final _ConversionResultDto _self;
  final $Res Function(_ConversionResultDto) _then;

/// Create a copy of ConversionResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? from = null,Object? to = null,Object? converted = null,Object? rate = null,}) {
  return _then(_ConversionResultDto(
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
