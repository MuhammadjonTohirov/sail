// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListingDetailState {

 bool get isLoading; Listing? get listing; List<Listing> get sellerListings; int get currentImageIndex; bool get isFavorited; bool get isRevealingContact; RevealContactResult? get revealedContact; Failure? get error;
/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingDetailStateCopyWith<ListingDetailState> get copyWith => _$ListingDetailStateCopyWithImpl<ListingDetailState>(this as ListingDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.listing, listing) || other.listing == listing)&&const DeepCollectionEquality().equals(other.sellerListings, sellerListings)&&(identical(other.currentImageIndex, currentImageIndex) || other.currentImageIndex == currentImageIndex)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.isRevealingContact, isRevealingContact) || other.isRevealingContact == isRevealingContact)&&(identical(other.revealedContact, revealedContact) || other.revealedContact == revealedContact)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,listing,const DeepCollectionEquality().hash(sellerListings),currentImageIndex,isFavorited,isRevealingContact,revealedContact,error);

@override
String toString() {
  return 'ListingDetailState(isLoading: $isLoading, listing: $listing, sellerListings: $sellerListings, currentImageIndex: $currentImageIndex, isFavorited: $isFavorited, isRevealingContact: $isRevealingContact, revealedContact: $revealedContact, error: $error)';
}


}

/// @nodoc
abstract mixin class $ListingDetailStateCopyWith<$Res>  {
  factory $ListingDetailStateCopyWith(ListingDetailState value, $Res Function(ListingDetailState) _then) = _$ListingDetailStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Listing? listing, List<Listing> sellerListings, int currentImageIndex, bool isFavorited, bool isRevealingContact, RevealContactResult? revealedContact, Failure? error
});


$ListingCopyWith<$Res>? get listing;$RevealContactResultCopyWith<$Res>? get revealedContact;

}
/// @nodoc
class _$ListingDetailStateCopyWithImpl<$Res>
    implements $ListingDetailStateCopyWith<$Res> {
  _$ListingDetailStateCopyWithImpl(this._self, this._then);

  final ListingDetailState _self;
  final $Res Function(ListingDetailState) _then;

/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? listing = freezed,Object? sellerListings = null,Object? currentImageIndex = null,Object? isFavorited = null,Object? isRevealingContact = null,Object? revealedContact = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,listing: freezed == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as Listing?,sellerListings: null == sellerListings ? _self.sellerListings : sellerListings // ignore: cast_nullable_to_non_nullable
as List<Listing>,currentImageIndex: null == currentImageIndex ? _self.currentImageIndex : currentImageIndex // ignore: cast_nullable_to_non_nullable
as int,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,isRevealingContact: null == isRevealingContact ? _self.isRevealingContact : isRevealingContact // ignore: cast_nullable_to_non_nullable
as bool,revealedContact: freezed == revealedContact ? _self.revealedContact : revealedContact // ignore: cast_nullable_to_non_nullable
as RevealContactResult?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingCopyWith<$Res>? get listing {
    if (_self.listing == null) {
    return null;
  }

  return $ListingCopyWith<$Res>(_self.listing!, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RevealContactResultCopyWith<$Res>? get revealedContact {
    if (_self.revealedContact == null) {
    return null;
  }

  return $RevealContactResultCopyWith<$Res>(_self.revealedContact!, (value) {
    return _then(_self.copyWith(revealedContact: value));
  });
}
}


/// Adds pattern-matching-related methods to [ListingDetailState].
extension ListingDetailStatePatterns on ListingDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingDetailState value)  $default,){
final _that = this;
switch (_that) {
case _ListingDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _ListingDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Listing? listing,  List<Listing> sellerListings,  int currentImageIndex,  bool isFavorited,  bool isRevealingContact,  RevealContactResult? revealedContact,  Failure? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingDetailState() when $default != null:
return $default(_that.isLoading,_that.listing,_that.sellerListings,_that.currentImageIndex,_that.isFavorited,_that.isRevealingContact,_that.revealedContact,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Listing? listing,  List<Listing> sellerListings,  int currentImageIndex,  bool isFavorited,  bool isRevealingContact,  RevealContactResult? revealedContact,  Failure? error)  $default,) {final _that = this;
switch (_that) {
case _ListingDetailState():
return $default(_that.isLoading,_that.listing,_that.sellerListings,_that.currentImageIndex,_that.isFavorited,_that.isRevealingContact,_that.revealedContact,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Listing? listing,  List<Listing> sellerListings,  int currentImageIndex,  bool isFavorited,  bool isRevealingContact,  RevealContactResult? revealedContact,  Failure? error)?  $default,) {final _that = this;
switch (_that) {
case _ListingDetailState() when $default != null:
return $default(_that.isLoading,_that.listing,_that.sellerListings,_that.currentImageIndex,_that.isFavorited,_that.isRevealingContact,_that.revealedContact,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _ListingDetailState implements ListingDetailState {
  const _ListingDetailState({this.isLoading = true, this.listing, final  List<Listing> sellerListings = const [], this.currentImageIndex = 0, this.isFavorited = false, this.isRevealingContact = false, this.revealedContact, this.error}): _sellerListings = sellerListings;
  

@override@JsonKey() final  bool isLoading;
@override final  Listing? listing;
 final  List<Listing> _sellerListings;
@override@JsonKey() List<Listing> get sellerListings {
  if (_sellerListings is EqualUnmodifiableListView) return _sellerListings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sellerListings);
}

@override@JsonKey() final  int currentImageIndex;
@override@JsonKey() final  bool isFavorited;
@override@JsonKey() final  bool isRevealingContact;
@override final  RevealContactResult? revealedContact;
@override final  Failure? error;

/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingDetailStateCopyWith<_ListingDetailState> get copyWith => __$ListingDetailStateCopyWithImpl<_ListingDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingDetailState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.listing, listing) || other.listing == listing)&&const DeepCollectionEquality().equals(other._sellerListings, _sellerListings)&&(identical(other.currentImageIndex, currentImageIndex) || other.currentImageIndex == currentImageIndex)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.isRevealingContact, isRevealingContact) || other.isRevealingContact == isRevealingContact)&&(identical(other.revealedContact, revealedContact) || other.revealedContact == revealedContact)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,listing,const DeepCollectionEquality().hash(_sellerListings),currentImageIndex,isFavorited,isRevealingContact,revealedContact,error);

@override
String toString() {
  return 'ListingDetailState(isLoading: $isLoading, listing: $listing, sellerListings: $sellerListings, currentImageIndex: $currentImageIndex, isFavorited: $isFavorited, isRevealingContact: $isRevealingContact, revealedContact: $revealedContact, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ListingDetailStateCopyWith<$Res> implements $ListingDetailStateCopyWith<$Res> {
  factory _$ListingDetailStateCopyWith(_ListingDetailState value, $Res Function(_ListingDetailState) _then) = __$ListingDetailStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Listing? listing, List<Listing> sellerListings, int currentImageIndex, bool isFavorited, bool isRevealingContact, RevealContactResult? revealedContact, Failure? error
});


@override $ListingCopyWith<$Res>? get listing;@override $RevealContactResultCopyWith<$Res>? get revealedContact;

}
/// @nodoc
class __$ListingDetailStateCopyWithImpl<$Res>
    implements _$ListingDetailStateCopyWith<$Res> {
  __$ListingDetailStateCopyWithImpl(this._self, this._then);

  final _ListingDetailState _self;
  final $Res Function(_ListingDetailState) _then;

/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? listing = freezed,Object? sellerListings = null,Object? currentImageIndex = null,Object? isFavorited = null,Object? isRevealingContact = null,Object? revealedContact = freezed,Object? error = freezed,}) {
  return _then(_ListingDetailState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,listing: freezed == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as Listing?,sellerListings: null == sellerListings ? _self._sellerListings : sellerListings // ignore: cast_nullable_to_non_nullable
as List<Listing>,currentImageIndex: null == currentImageIndex ? _self.currentImageIndex : currentImageIndex // ignore: cast_nullable_to_non_nullable
as int,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,isRevealingContact: null == isRevealingContact ? _self.isRevealingContact : isRevealingContact // ignore: cast_nullable_to_non_nullable
as bool,revealedContact: freezed == revealedContact ? _self.revealedContact : revealedContact // ignore: cast_nullable_to_non_nullable
as RevealContactResult?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingCopyWith<$Res>? get listing {
    if (_self.listing == null) {
    return null;
  }

  return $ListingCopyWith<$Res>(_self.listing!, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ListingDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RevealContactResultCopyWith<$Res>? get revealedContact {
    if (_self.revealedContact == null) {
    return null;
  }

  return $RevealContactResultCopyWith<$Res>(_self.revealedContact!, (value) {
    return _then(_self.copyWith(revealedContact: value));
  });
}
}

// dart format on
