// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchResultStruct extends FFFirebaseStruct {
  SearchResultStruct({
    String? status,
    String? imageBase64,
    String? name,
    double? overallRating,
    List<SearchHintStruct>? text,
    String? timestamp,
    List<IngredientRatingStruct>? ingredientsRating,
    bool? isIngredient,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _status = status,
        _imageBase64 = imageBase64,
        _name = name,
        _overallRating = overallRating,
        _text = text,
        _timestamp = timestamp,
        _ingredientsRating = ingredientsRating,
        _isIngredient = isIngredient,
        super(firestoreUtilData);

  // "status" field.
  String? _status;
  String get status => _status ?? 'success';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "imageBase64" field.
  String? _imageBase64;
  String get imageBase64 => _imageBase64 ?? '';
  set imageBase64(String? val) => _imageBase64 = val;

  bool hasImageBase64() => _imageBase64 != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "overall_rating" field.
  double? _overallRating;
  double get overallRating => _overallRating ?? 0.0;
  set overallRating(double? val) => _overallRating = val;

  void incrementOverallRating(double amount) =>
      overallRating = overallRating + amount;

  bool hasOverallRating() => _overallRating != null;

  // "text" field.
  List<SearchHintStruct>? _text;
  List<SearchHintStruct> get text => _text ?? const [];
  set text(List<SearchHintStruct>? val) => _text = val;

  void updateText(Function(List<SearchHintStruct>) updateFn) {
    updateFn(_text ??= []);
  }

  bool hasText() => _text != null;

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  set timestamp(String? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  // "ingredients_rating" field.
  List<IngredientRatingStruct>? _ingredientsRating;
  List<IngredientRatingStruct> get ingredientsRating =>
      _ingredientsRating ?? const [];
  set ingredientsRating(List<IngredientRatingStruct>? val) =>
      _ingredientsRating = val;

  void updateIngredientsRating(
      Function(List<IngredientRatingStruct>) updateFn) {
    updateFn(_ingredientsRating ??= []);
  }

  bool hasIngredientsRating() => _ingredientsRating != null;

  // "is_ingredient" field.
  bool? _isIngredient;
  bool get isIngredient => _isIngredient ?? false;
  set isIngredient(bool? val) => _isIngredient = val;

  bool hasIsIngredient() => _isIngredient != null;

  static SearchResultStruct fromMap(Map<String, dynamic> data) =>
      SearchResultStruct(
        status: data['status'] as String?,
        imageBase64: data['imageBase64'] as String?,
        name: data['name'] as String?,
        overallRating: castToType<double>(data['overall_rating']),
        text: getStructList(
          data['text'],
          SearchHintStruct.fromMap,
        ),
        timestamp: data['timestamp'] as String?,
        ingredientsRating: getStructList(
          data['ingredients_rating'],
          IngredientRatingStruct.fromMap,
        ),
        isIngredient: data['is_ingredient'] as bool?,
      );

  static SearchResultStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'imageBase64': _imageBase64,
        'name': _name,
        'overall_rating': _overallRating,
        'text': _text?.map((e) => e.toMap()).toList(),
        'timestamp': _timestamp,
        'ingredients_rating':
            _ingredientsRating?.map((e) => e.toMap()).toList(),
        'is_ingredient': _isIngredient,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'imageBase64': serializeParam(
          _imageBase64,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'overall_rating': serializeParam(
          _overallRating,
          ParamType.double,
        ),
        'text': serializeParam(
          _text,
          ParamType.DataStruct,
          isList: true,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.String,
        ),
        'ingredients_rating': serializeParam(
          _ingredientsRating,
          ParamType.DataStruct,
          isList: true,
        ),
        'is_ingredient': serializeParam(
          _isIngredient,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SearchResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchResultStruct(
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        imageBase64: deserializeParam(
          data['imageBase64'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        overallRating: deserializeParam(
          data['overall_rating'],
          ParamType.double,
          false,
        ),
        text: deserializeStructParam<SearchHintStruct>(
          data['text'],
          ParamType.DataStruct,
          true,
          structBuilder: SearchHintStruct.fromSerializableMap,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.String,
          false,
        ),
        ingredientsRating: deserializeStructParam<IngredientRatingStruct>(
          data['ingredients_rating'],
          ParamType.DataStruct,
          true,
          structBuilder: IngredientRatingStruct.fromSerializableMap,
        ),
        isIngredient: deserializeParam(
          data['is_ingredient'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SearchResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SearchResultStruct &&
        status == other.status &&
        imageBase64 == other.imageBase64 &&
        name == other.name &&
        overallRating == other.overallRating &&
        listEquality.equals(text, other.text) &&
        timestamp == other.timestamp &&
        listEquality.equals(ingredientsRating, other.ingredientsRating) &&
        isIngredient == other.isIngredient;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        imageBase64,
        name,
        overallRating,
        text,
        timestamp,
        ingredientsRating,
        isIngredient
      ]);
}

SearchResultStruct createSearchResultStruct({
  String? status,
  String? imageBase64,
  String? name,
  double? overallRating,
  String? timestamp,
  bool? isIngredient,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SearchResultStruct(
      status: status,
      imageBase64: imageBase64,
      name: name,
      overallRating: overallRating,
      timestamp: timestamp,
      isIngredient: isIngredient,
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
