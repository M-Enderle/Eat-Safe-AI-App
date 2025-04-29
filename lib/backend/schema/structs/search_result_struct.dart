// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SearchResultStruct extends FFFirebaseStruct {
  SearchResultStruct({
    String? json,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _json = json,
        super(firestoreUtilData);

  // "JSON" field.
  String? _json;
  String get json => _json ?? '';
  set json(String? val) => _json = val;

  bool hasJson() => _json != null;

  static SearchResultStruct fromMap(Map<String, dynamic> data) =>
      SearchResultStruct(
        json: data['JSON'] as String?,
      );

  static SearchResultStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'JSON': _json,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'JSON': serializeParam(
          _json,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchResultStruct(
        json: deserializeParam(
          data['JSON'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchResultStruct && json == other.json;
  }

  @override
  int get hashCode => const ListEquality().hash([json]);
}

SearchResultStruct createSearchResultStruct({
  String? json,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchResultStruct(
      json: json,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchResultStruct? updateSearchResultStruct(
  SearchResultStruct? searchResult, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchResult
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchResultStructData(
  Map<String, dynamic> firestoreData,
  SearchResultStruct? searchResult,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchResult == null) {
    return;
  }
  if (searchResult.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchResult.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchResultData =
      getSearchResultFirestoreData(searchResult, forFieldValue);
  final nestedData =
      searchResultData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchResult.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchResultFirestoreData(
  SearchResultStruct? searchResult, [
  bool forFieldValue = false,
]) {
  if (searchResult == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchResult.toMap());

  // Add any Firestore field values
  searchResult.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchResultListFirestoreData(
  List<SearchResultStruct>? searchResults,
) =>
    searchResults?.map((e) => getSearchResultFirestoreData(e, true)).toList() ??
    [];
