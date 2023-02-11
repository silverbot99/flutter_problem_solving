// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsPaginated$Query$Posts$Data _$PostsPaginated$Query$Posts$DataFromJson(
        Map<String, dynamic> json) =>
    PostsPaginated$Query$Posts$Data()
      ..id = json['id'] as String?
      ..title = json['title'] as String?;

Map<String, dynamic> _$PostsPaginated$Query$Posts$DataToJson(
        PostsPaginated$Query$Posts$Data instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

PostsPaginated$Query$Posts$Meta _$PostsPaginated$Query$Posts$MetaFromJson(
        Map<String, dynamic> json) =>
    PostsPaginated$Query$Posts$Meta()..totalCount = json['totalCount'] as int?;

Map<String, dynamic> _$PostsPaginated$Query$Posts$MetaToJson(
        PostsPaginated$Query$Posts$Meta instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
    };

PostsPaginated$Query$Posts _$PostsPaginated$Query$PostsFromJson(
        Map<String, dynamic> json) =>
    PostsPaginated$Query$Posts()
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PostsPaginated$Query$Posts$Data.fromJson(
                  e as Map<String, dynamic>))
          .toList()
      ..meta = json['meta'] == null
          ? null
          : PostsPaginated$Query$Posts$Meta.fromJson(
              json['meta'] as Map<String, dynamic>);

Map<String, dynamic> _$PostsPaginated$Query$PostsToJson(
        PostsPaginated$Query$Posts instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e?.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

PostsPaginated$Query _$PostsPaginated$QueryFromJson(
        Map<String, dynamic> json) =>
    PostsPaginated$Query()
      ..posts = json['posts'] == null
          ? null
          : PostsPaginated$Query$Posts.fromJson(
              json['posts'] as Map<String, dynamic>);

Map<String, dynamic> _$PostsPaginated$QueryToJson(
        PostsPaginated$Query instance) =>
    <String, dynamic>{
      'posts': instance.posts?.toJson(),
    };

PageQueryOptions _$PageQueryOptionsFromJson(Map<String, dynamic> json) =>
    PageQueryOptions(
      paginate: json['paginate'] == null
          ? null
          : PaginateOptions.fromJson(json['paginate'] as Map<String, dynamic>),
      slice: json['slice'] == null
          ? null
          : SliceOptions.fromJson(json['slice'] as Map<String, dynamic>),
      sort: (json['sort'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SortOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      operators: (json['operators'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : OperatorOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      search: json['search'] == null
          ? null
          : SearchOptions.fromJson(json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageQueryOptionsToJson(PageQueryOptions instance) =>
    <String, dynamic>{
      'paginate': instance.paginate?.toJson(),
      'slice': instance.slice?.toJson(),
      'sort': instance.sort?.map((e) => e?.toJson()).toList(),
      'operators': instance.operators?.map((e) => e?.toJson()).toList(),
      'search': instance.search?.toJson(),
    };

PaginateOptions _$PaginateOptionsFromJson(Map<String, dynamic> json) =>
    PaginateOptions(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$PaginateOptionsToJson(PaginateOptions instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };

SliceOptions _$SliceOptionsFromJson(Map<String, dynamic> json) => SliceOptions(
      start: json['start'] as int?,
      end: json['end'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$SliceOptionsToJson(SliceOptions instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'limit': instance.limit,
    };

SortOptions _$SortOptionsFromJson(Map<String, dynamic> json) => SortOptions(
      field: json['field'] as String?,
      order: $enumDecodeNullable(_$SortOrderEnumEnumMap, json['order'],
          unknownValue: SortOrderEnum.artemisUnknown),
    );

Map<String, dynamic> _$SortOptionsToJson(SortOptions instance) =>
    <String, dynamic>{
      'field': instance.field,
      'order': _$SortOrderEnumEnumMap[instance.order],
    };

const _$SortOrderEnumEnumMap = {
  SortOrderEnum.asc: 'ASC',
  SortOrderEnum.desc: 'DESC',
  SortOrderEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

OperatorOptions _$OperatorOptionsFromJson(Map<String, dynamic> json) =>
    OperatorOptions(
      kind: $enumDecodeNullable(_$OperatorKindEnumEnumMap, json['kind'],
          unknownValue: OperatorKindEnum.artemisUnknown),
      field: json['field'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$OperatorOptionsToJson(OperatorOptions instance) =>
    <String, dynamic>{
      'kind': _$OperatorKindEnumEnumMap[instance.kind],
      'field': instance.field,
      'value': instance.value,
    };

const _$OperatorKindEnumEnumMap = {
  OperatorKindEnum.gte: 'GTE',
  OperatorKindEnum.lte: 'LTE',
  OperatorKindEnum.ne: 'NE',
  OperatorKindEnum.like: 'LIKE',
  OperatorKindEnum.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

SearchOptions _$SearchOptionsFromJson(Map<String, dynamic> json) =>
    SearchOptions(
      q: json['q'] as String?,
    );

Map<String, dynamic> _$SearchOptionsToJson(SearchOptions instance) =>
    <String, dynamic>{
      'q': instance.q,
    };

PostsPaginatedArguments _$PostsPaginatedArgumentsFromJson(
        Map<String, dynamic> json) =>
    PostsPaginatedArguments(
      options: json['options'] == null
          ? null
          : PageQueryOptions.fromJson(json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostsPaginatedArgumentsToJson(
        PostsPaginatedArguments instance) =>
    <String, dynamic>{
      'options': instance.options?.toJson(),
    };
