// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultationmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsultationModel _$ConsultationModelFromJson(Map<String, dynamic> json) {
  return _ConsultationModel.fromJson(json);
}

/// @nodoc
mixin _$ConsultationModel {
  int? get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  int? get consultancy_request_status_id => throw _privateConstructorUsedError;
  int? get payment_id => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  List<FilesModel>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConsultationModelCopyWith<ConsultationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationModelCopyWith<$Res> {
  factory $ConsultationModelCopyWith(
          ConsultationModel value, $Res Function(ConsultationModel) then) =
      _$ConsultationModelCopyWithImpl<$Res, ConsultationModel>;
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? name,
      String? text,
      int? consultancy_request_status_id,
      int? payment_id,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      List<FilesModel>? files});

  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ConsultationModelCopyWithImpl<$Res, $Val extends ConsultationModel>
    implements $ConsultationModelCopyWith<$Res> {
  _$ConsultationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? name = freezed,
    Object? text = freezed,
    Object? consultancy_request_status_id = freezed,
    Object? payment_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      consultancy_request_status_id: freezed == consultancy_request_status_id
          ? _value.consultancy_request_status_id
          : consultancy_request_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConsultationModelCopyWith<$Res>
    implements $ConsultationModelCopyWith<$Res> {
  factory _$$_ConsultationModelCopyWith(_$_ConsultationModel value,
          $Res Function(_$_ConsultationModel) then) =
      __$$_ConsultationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? user_id,
      String? name,
      String? text,
      int? consultancy_request_status_id,
      int? payment_id,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      List<FilesModel>? files});

  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$_ConsultationModelCopyWithImpl<$Res>
    extends _$ConsultationModelCopyWithImpl<$Res, _$_ConsultationModel>
    implements _$$_ConsultationModelCopyWith<$Res> {
  __$$_ConsultationModelCopyWithImpl(
      _$_ConsultationModel _value, $Res Function(_$_ConsultationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user_id = freezed,
    Object? name = freezed,
    Object? text = freezed,
    Object? consultancy_request_status_id = freezed,
    Object? payment_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? files = freezed,
  }) {
    return _then(_$_ConsultationModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      consultancy_request_status_id: freezed == consultancy_request_status_id
          ? _value.consultancy_request_status_id
          : consultancy_request_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FilesModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConsultationModel extends _ConsultationModel {
  const _$_ConsultationModel(
      {this.id,
      this.user_id,
      this.name,
      this.text,
      this.consultancy_request_status_id,
      this.payment_id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status,
      final List<FilesModel>? files})
      : _files = files,
        super._();

  factory _$_ConsultationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConsultationModelFromJson(json);

  @override
  final int? id;
  @override
  final int? user_id;
  @override
  final String? name;
  @override
  final String? text;
  @override
  final int? consultancy_request_status_id;
  @override
  final int? payment_id;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final StatusModel? status;
  final List<FilesModel>? _files;
  @override
  List<FilesModel>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ConsultationModel(id: $id, user_id: $user_id, name: $name, text: $text, consultancy_request_status_id: $consultancy_request_status_id, payment_id: $payment_id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status, files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsultationModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.consultancy_request_status_id,
                    consultancy_request_status_id) ||
                other.consultancy_request_status_id ==
                    consultancy_request_status_id) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user_id,
      name,
      text,
      consultancy_request_status_id,
      payment_id,
      created_at,
      updated_at,
      deleted_at,
      status,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConsultationModelCopyWith<_$_ConsultationModel> get copyWith =>
      __$$_ConsultationModelCopyWithImpl<_$_ConsultationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConsultationModelToJson(
      this,
    );
  }
}

abstract class _ConsultationModel extends ConsultationModel {
  const factory _ConsultationModel(
      {final int? id,
      final int? user_id,
      final String? name,
      final String? text,
      final int? consultancy_request_status_id,
      final int? payment_id,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status,
      final List<FilesModel>? files}) = _$_ConsultationModel;
  const _ConsultationModel._() : super._();

  factory _ConsultationModel.fromJson(Map<String, dynamic> json) =
      _$_ConsultationModel.fromJson;

  @override
  int? get id;
  @override
  int? get user_id;
  @override
  String? get name;
  @override
  String? get text;
  @override
  int? get consultancy_request_status_id;
  @override
  int? get payment_id;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  StatusModel? get status;
  @override
  List<FilesModel>? get files;
  @override
  @JsonKey(ignore: true)
  _$$_ConsultationModelCopyWith<_$_ConsultationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
