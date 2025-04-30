// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngredientRatingStruct extends FFFirebaseStruct {
  IngredientRatingStruct({
    String? ingredientName,

    /// Out of 10.0
    double? rating,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ingredientName = ingredientName,
        _rating = rating,
        super(firestoreUtilData);

  // "ingredient_name" field.
  String? _ingredientName;
  String get ingredientName => _ingredientName ?? '';
  set ingredientName(String? val) => _ingredientName = val;

  bool hasIngredientName() => _ingredientName != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  set rating(double? val) => _rating = val;

  void incrementRating(double amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  static IngredientRatingStruct fromMap(Map<String, dynamic> data) =>
      IngredientRatingStruct(
        ingredientName: data['ingredient_name'] as String?,
        rating: castToType<double>(data['rating']),
      );

  static IngredientRatingStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientRatingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ingredient_name': _ingredientName,
        'rating': _rating,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ingredient_name': serializeParam(
          _ingredientName,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.double,
        ),
      }.withoutNulls;

  static IngredientRatingStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IngredientRatingStruct(
        ingredientName: deserializeParam(
          data['ingredient_name'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'IngredientRatingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientRatingStruct &&
        ingredientName == other.ingredientName &&
        rating == other.rating;
  }

  @override
  int get hashCode => const ListEquality().hash([ingredientName, rating]);
}

IngredientRatingStruct createIngredientRatingStruct({
  String? ingredientName,
  double? rating,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientRatingStruct(
      ingredientName: ingredientName,
      rating: rating,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngredientRatingStruct? updateIngredientRatingStruct(
  IngredientRatingStruct? ingredientRating, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredientRating
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientRatingStructData(
  Map<String, dynamic> firestoreData,
  IngredientRatingStruct? ingredientRating,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredientRating == null) {
    return;
  }
  if (ingredientRating.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredientRating.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientRatingData =
      getIngredientRatingFirestoreData(ingredientRating, forFieldValue);
  final nestedData =
      ingredientRatingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredientRating.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientRatingFirestoreData(
  IngredientRatingStruct? ingredientRating, [
  bool forFieldValue = false,
]) {
  if (ingredientRating == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredientRating.toMap());

  // Add any Firestore field values
  ingredientRating.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientRatingListFirestoreData(
  List<IngredientRatingStruct>? ingredientRatings,
) =>
    ingredientRatings
        ?.map((e) => getIngredientRatingFirestoreData(e, true))
        .toList() ??
    [];
