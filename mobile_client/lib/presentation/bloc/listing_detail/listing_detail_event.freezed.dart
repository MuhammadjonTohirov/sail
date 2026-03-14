// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListingDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingDetailEvent()';
}


}

/// @nodoc
class $ListingDetailEventCopyWith<$Res>  {
$ListingDetailEventCopyWith(ListingDetailEvent _, $Res Function(ListingDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ListingDetailEvent].
extension ListingDetailEventPatterns on ListingDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ListingDetailStarted value)?  started,TResult Function( ListingDetailRevealContact value)?  revealContact,TResult Function( ListingDetailToggleFavorite value)?  toggleFavorite,TResult Function( ListingDetailImageChanged value)?  imageChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ListingDetailStarted() when started != null:
return started(_that);case ListingDetailRevealContact() when revealContact != null:
return revealContact(_that);case ListingDetailToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case ListingDetailImageChanged() when imageChanged != null:
return imageChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ListingDetailStarted value)  started,required TResult Function( ListingDetailRevealContact value)  revealContact,required TResult Function( ListingDetailToggleFavorite value)  toggleFavorite,required TResult Function( ListingDetailImageChanged value)  imageChanged,}){
final _that = this;
switch (_that) {
case ListingDetailStarted():
return started(_that);case ListingDetailRevealContact():
return revealContact(_that);case ListingDetailToggleFavorite():
return toggleFavorite(_that);case ListingDetailImageChanged():
return imageChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ListingDetailStarted value)?  started,TResult? Function( ListingDetailRevealContact value)?  revealContact,TResult? Function( ListingDetailToggleFavorite value)?  toggleFavorite,TResult? Function( ListingDetailImageChanged value)?  imageChanged,}){
final _that = this;
switch (_that) {
case ListingDetailStarted() when started != null:
return started(_that);case ListingDetailRevealContact() when revealContact != null:
return revealContact(_that);case ListingDetailToggleFavorite() when toggleFavorite != null:
return toggleFavorite(_that);case ListingDetailImageChanged() when imageChanged != null:
return imageChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int listingId)?  started,TResult Function()?  revealContact,TResult Function()?  toggleFavorite,TResult Function( int index)?  imageChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ListingDetailStarted() when started != null:
return started(_that.listingId);case ListingDetailRevealContact() when revealContact != null:
return revealContact();case ListingDetailToggleFavorite() when toggleFavorite != null:
return toggleFavorite();case ListingDetailImageChanged() when imageChanged != null:
return imageChanged(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int listingId)  started,required TResult Function()  revealContact,required TResult Function()  toggleFavorite,required TResult Function( int index)  imageChanged,}) {final _that = this;
switch (_that) {
case ListingDetailStarted():
return started(_that.listingId);case ListingDetailRevealContact():
return revealContact();case ListingDetailToggleFavorite():
return toggleFavorite();case ListingDetailImageChanged():
return imageChanged(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int listingId)?  started,TResult? Function()?  revealContact,TResult? Function()?  toggleFavorite,TResult? Function( int index)?  imageChanged,}) {final _that = this;
switch (_that) {
case ListingDetailStarted() when started != null:
return started(_that.listingId);case ListingDetailRevealContact() when revealContact != null:
return revealContact();case ListingDetailToggleFavorite() when toggleFavorite != null:
return toggleFavorite();case ListingDetailImageChanged() when imageChanged != null:
return imageChanged(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class ListingDetailStarted implements ListingDetailEvent {
  const ListingDetailStarted(this.listingId);
  

 final  int listingId;

/// Create a copy of ListingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingDetailStartedCopyWith<ListingDetailStarted> get copyWith => _$ListingDetailStartedCopyWithImpl<ListingDetailStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailStarted&&(identical(other.listingId, listingId) || other.listingId == listingId));
}


@override
int get hashCode => Object.hash(runtimeType,listingId);

@override
String toString() {
  return 'ListingDetailEvent.started(listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $ListingDetailStartedCopyWith<$Res> implements $ListingDetailEventCopyWith<$Res> {
  factory $ListingDetailStartedCopyWith(ListingDetailStarted value, $Res Function(ListingDetailStarted) _then) = _$ListingDetailStartedCopyWithImpl;
@useResult
$Res call({
 int listingId
});




}
/// @nodoc
class _$ListingDetailStartedCopyWithImpl<$Res>
    implements $ListingDetailStartedCopyWith<$Res> {
  _$ListingDetailStartedCopyWithImpl(this._self, this._then);

  final ListingDetailStarted _self;
  final $Res Function(ListingDetailStarted) _then;

/// Create a copy of ListingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listingId = null,}) {
  return _then(ListingDetailStarted(
null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ListingDetailRevealContact implements ListingDetailEvent {
  const ListingDetailRevealContact();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailRevealContact);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingDetailEvent.revealContact()';
}


}




/// @nodoc


class ListingDetailToggleFavorite implements ListingDetailEvent {
  const ListingDetailToggleFavorite();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailToggleFavorite);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ListingDetailEvent.toggleFavorite()';
}


}




/// @nodoc


class ListingDetailImageChanged implements ListingDetailEvent {
  const ListingDetailImageChanged(this.index);
  

 final  int index;

/// Create a copy of ListingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingDetailImageChangedCopyWith<ListingDetailImageChanged> get copyWith => _$ListingDetailImageChangedCopyWithImpl<ListingDetailImageChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDetailImageChanged&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ListingDetailEvent.imageChanged(index: $index)';
}


}

/// @nodoc
abstract mixin class $ListingDetailImageChangedCopyWith<$Res> implements $ListingDetailEventCopyWith<$Res> {
  factory $ListingDetailImageChangedCopyWith(ListingDetailImageChanged value, $Res Function(ListingDetailImageChanged) _then) = _$ListingDetailImageChangedCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$ListingDetailImageChangedCopyWithImpl<$Res>
    implements $ListingDetailImageChangedCopyWith<$Res> {
  _$ListingDetailImageChangedCopyWithImpl(this._self, this._then);

  final ListingDetailImageChanged _self;
  final $Res Function(ListingDetailImageChanged) _then;

/// Create a copy of ListingDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(ListingDetailImageChanged(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
