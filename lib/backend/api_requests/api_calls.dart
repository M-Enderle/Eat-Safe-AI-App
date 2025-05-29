import 'dart:convert';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class HelloworldCall {
  static Future<ApiCallResponse> call({
    String? searchTerm = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'HELLOWORLD',
      apiUrl: 'https://eat-safe-ai-fast-api.vercel.app/hello',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchCall {
  static Future<ApiCallResponse> call({
    String? searchTerm = '',
    dynamic userProfileJson,
  }) async {
    final userProfile = _serializeJson(userProfileJson);
    final ffApiRequestBody = '''
{
  "query": "${escapeStringForJson(searchTerm)}",
  "user_profile": ${userProfile}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'search',
      apiUrl: 'https://eat-safe-ai-fast-api.vercel.app/search',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  static String? imageBase64(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imageBase64''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static double? overallRating(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.overall_rating''',
      ));
  static List<SearchHintStruct>? fullText(dynamic response) => (getJsonField(
        response,
        r'''$.text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => SearchHintStruct.maybeFromMap(x))
          .withoutNulls
          .toList();
  static String? timestamp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timestamp''',
      ));
  static List? ingredientsRatings(dynamic response) => getJsonField(
        response,
        r'''$.ingredients_rating''',
        true,
      ) as List?;
  static bool? isIngredient(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_ingredient''',
      ));
  static List<String>? tipKeyword(dynamic response) => (getJsonField(
        response,
        r'''$.text[:].keyword''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tipText(dynamic response) => (getJsonField(
        response,
        r'''$.text[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
