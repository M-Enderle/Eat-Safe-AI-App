// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SearchHintStruct extends FFFirebaseStruct {
  SearchHintStruct({
    String? keyword,
    String? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _keyword = keyword,
        _text = text,
        super(firestoreUtilData);

  // "keyword" field.
  String? _keyword;
  String get keyword => _keyword ?? '';
  set keyword(String? val) => _keyword = val;

  bool hasKeyword() => _keyword != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  static SearchHintStruct fromMap(Map<String, dynamic> data) =>
      SearchHintStruct(
        keyword: data['keyword'] as String?,
        text: data['text'] as String?,
      );

  static SearchHintStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchHintStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'keyword': _keyword,
        'text': _text,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'keyword': serializeParam(
          _keyword,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static SearchHintStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchHintStruct(
        keyword: deserializeParam(
          data['keyword'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SearchHintStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchHintStruct &&
        keyword == other.keyword &&
        text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([keyword, text]);
}

SearchHintStruct createSearchHintStruct({
  String? keyword,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchHintStruct(
      keyword: keyword,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SearchHintStruct? updateSearchHintStruct(
  SearchHintStruct? searchHint, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    searchHint
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSearchHintStructData(
  Map<String, dynamic> firestoreData,
  SearchHintStruct? searchHint,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (searchHint == null) {
    return;
  }
  if (searchHint.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && searchHint.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final searchHintData = getSearchHintFirestoreData(searchHint, forFieldValue);
  final nestedData = searchHintData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = searchHint.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSearchHintFirestoreData(
  SearchHintStruct? searchHint, [
  bool forFieldValue = false,
]) {
  if (searchHint == null) {
    return {};
  }
  final firestoreData = mapToFirestore(searchHint.toMap());

  // Add any Firestore field values
  searchHint.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSearchHintListFirestoreData(
  List<SearchHintStruct>? searchHints,
) =>
    searchHints?.map((e) => getSearchHintFirestoreData(e, true)).toList() ?? [];
