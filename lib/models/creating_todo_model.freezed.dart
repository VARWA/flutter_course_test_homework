// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creating_todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatingTodo {

 String get title; String get description;@JsonKey(name: 'deadline_date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? get deadlineDate;
/// Create a copy of CreatingTodo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatingTodoCopyWith<CreatingTodo> get copyWith => _$CreatingTodoCopyWithImpl<CreatingTodo>(this as CreatingTodo, _$identity);

  /// Serializes this CreatingTodo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatingTodo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,deadlineDate);

@override
String toString() {
  return 'CreatingTodo(title: $title, description: $description, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class $CreatingTodoCopyWith<$Res>  {
  factory $CreatingTodoCopyWith(CreatingTodo value, $Res Function(CreatingTodo) _then) = _$CreatingTodoCopyWithImpl;
@useResult
$Res call({
 String title, String description,@JsonKey(name: 'deadline_date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? deadlineDate
});




}
/// @nodoc
class _$CreatingTodoCopyWithImpl<$Res>
    implements $CreatingTodoCopyWith<$Res> {
  _$CreatingTodoCopyWithImpl(this._self, this._then);

  final CreatingTodo _self;
  final $Res Function(CreatingTodo) _then;

/// Create a copy of CreatingTodo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? deadlineDate = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CreatingTodo implements CreatingTodo {
  const _CreatingTodo({required this.title, required this.description, @JsonKey(name: 'deadline_date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) this.deadlineDate});
  factory _CreatingTodo.fromJson(Map<String, dynamic> json) => _$CreatingTodoFromJson(json);

@override final  String title;
@override final  String description;
@override@JsonKey(name: 'deadline_date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) final  DateTime? deadlineDate;

/// Create a copy of CreatingTodo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatingTodoCopyWith<_CreatingTodo> get copyWith => __$CreatingTodoCopyWithImpl<_CreatingTodo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatingTodoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatingTodo&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,deadlineDate);

@override
String toString() {
  return 'CreatingTodo(title: $title, description: $description, deadlineDate: $deadlineDate)';
}


}

/// @nodoc
abstract mixin class _$CreatingTodoCopyWith<$Res> implements $CreatingTodoCopyWith<$Res> {
  factory _$CreatingTodoCopyWith(_CreatingTodo value, $Res Function(_CreatingTodo) _then) = __$CreatingTodoCopyWithImpl;
@override @useResult
$Res call({
 String title, String description,@JsonKey(name: 'deadline_date', fromJson: _dateTimeFromJson, toJson: _dateTimeToJson) DateTime? deadlineDate
});




}
/// @nodoc
class __$CreatingTodoCopyWithImpl<$Res>
    implements _$CreatingTodoCopyWith<$Res> {
  __$CreatingTodoCopyWithImpl(this._self, this._then);

  final _CreatingTodo _self;
  final $Res Function(_CreatingTodo) _then;

/// Create a copy of CreatingTodo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? deadlineDate = freezed,}) {
  return _then(_CreatingTodo(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
