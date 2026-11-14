// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Todo {

 int get id;@JsonKey(name: 'user_id') int get userId; int get status; String get title; String get description;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'deadline_date') DateTime? get deadlineDate;@JsonKey(name: 'updated_at') DateTime get updatedAt;@JsonKey(name: 'status_name') String get statusName;
/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoCopyWith<Todo> get copyWith => _$TodoCopyWithImpl<Todo>(this as Todo, _$identity);

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Todo&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.statusName, statusName) || other.statusName == statusName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,title,description,createdAt,deadlineDate,updatedAt,statusName);

@override
String toString() {
  return 'Todo(id: $id, userId: $userId, status: $status, title: $title, description: $description, createdAt: $createdAt, deadlineDate: $deadlineDate, updatedAt: $updatedAt, statusName: $statusName)';
}


}

/// @nodoc
abstract mixin class $TodoCopyWith<$Res>  {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) _then) = _$TodoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, int status, String title, String description,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'deadline_date') DateTime? deadlineDate,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'status_name') String statusName
});




}
/// @nodoc
class _$TodoCopyWithImpl<$Res>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._self, this._then);

  final Todo _self;
  final $Res Function(Todo) _then;

/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? title = null,Object? description = null,Object? createdAt = null,Object? deadlineDate = freezed,Object? updatedAt = null,Object? statusName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Todo implements Todo {
  const _Todo({required this.id, @JsonKey(name: 'user_id') required this.userId, required this.status, required this.title, required this.description, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'deadline_date') this.deadlineDate, @JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'status_name') required this.statusName});
  factory _Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  int status;
@override final  String title;
@override final  String description;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'deadline_date') final  DateTime? deadlineDate;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
@override@JsonKey(name: 'status_name') final  String statusName;

/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodoCopyWith<_Todo> get copyWith => __$TodoCopyWithImpl<_Todo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Todo&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.status, status) || other.status == status)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.deadlineDate, deadlineDate) || other.deadlineDate == deadlineDate)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.statusName, statusName) || other.statusName == statusName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,status,title,description,createdAt,deadlineDate,updatedAt,statusName);

@override
String toString() {
  return 'Todo(id: $id, userId: $userId, status: $status, title: $title, description: $description, createdAt: $createdAt, deadlineDate: $deadlineDate, updatedAt: $updatedAt, statusName: $statusName)';
}


}

/// @nodoc
abstract mixin class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) _then) = __$TodoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'user_id') int userId, int status, String title, String description,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'deadline_date') DateTime? deadlineDate,@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'status_name') String statusName
});




}
/// @nodoc
class __$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(this._self, this._then);

  final _Todo _self;
  final $Res Function(_Todo) _then;

/// Create a copy of Todo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? status = null,Object? title = null,Object? description = null,Object? createdAt = null,Object? deadlineDate = freezed,Object? updatedAt = null,Object? statusName = null,}) {
  return _then(_Todo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,deadlineDate: freezed == deadlineDate ? _self.deadlineDate : deadlineDate // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,statusName: null == statusName ? _self.statusName : statusName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
