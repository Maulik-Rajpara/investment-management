// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Investment _$InvestmentFromJson(Map<String, dynamic> json) {
  return _Investment.fromJson(json);
}

/// @nodoc
mixin _$Investment {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get pdfUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentCopyWith<Investment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentCopyWith<$Res> {
  factory $InvestmentCopyWith(
          Investment value, $Res Function(Investment) then) =
      _$InvestmentCopyWithImpl<$Res, Investment>;
  @useResult
  $Res call({int id, String title, String description, String pdfUrl});
}

/// @nodoc
class _$InvestmentCopyWithImpl<$Res, $Val extends Investment>
    implements $InvestmentCopyWith<$Res> {
  _$InvestmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? pdfUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pdfUrl: null == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestmentImplCopyWith<$Res>
    implements $InvestmentCopyWith<$Res> {
  factory _$$InvestmentImplCopyWith(
          _$InvestmentImpl value, $Res Function(_$InvestmentImpl) then) =
      __$$InvestmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String description, String pdfUrl});
}

/// @nodoc
class __$$InvestmentImplCopyWithImpl<$Res>
    extends _$InvestmentCopyWithImpl<$Res, _$InvestmentImpl>
    implements _$$InvestmentImplCopyWith<$Res> {
  __$$InvestmentImplCopyWithImpl(
      _$InvestmentImpl _value, $Res Function(_$InvestmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? pdfUrl = null,
  }) {
    return _then(_$InvestmentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pdfUrl: null == pdfUrl
          ? _value.pdfUrl
          : pdfUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentImpl implements _Investment {
  const _$InvestmentImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.pdfUrl});

  factory _$InvestmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String pdfUrl;

  @override
  String toString() {
    return 'Investment(id: $id, title: $title, description: $description, pdfUrl: $pdfUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, pdfUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentImplCopyWith<_$InvestmentImpl> get copyWith =>
      __$$InvestmentImplCopyWithImpl<_$InvestmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentImplToJson(
      this,
    );
  }
}

abstract class _Investment implements Investment {
  const factory _Investment(
      {required final int id,
      required final String title,
      required final String description,
      required final String pdfUrl}) = _$InvestmentImpl;

  factory _Investment.fromJson(Map<String, dynamic> json) =
      _$InvestmentImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get pdfUrl;
  @override
  @JsonKey(ignore: true)
  _$$InvestmentImplCopyWith<_$InvestmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
