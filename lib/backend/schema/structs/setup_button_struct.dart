// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SetupButtonStruct extends FFFirebaseStruct {
  SetupButtonStruct({
    String? name,
    bool? isIntolerance,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _isIntolerance = isIntolerance,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "isIntolerance" field.
  bool? _isIntolerance;
  bool get isIntolerance => _isIntolerance ?? false;
  set isIntolerance(bool? val) => _isIntolerance = val;

  bool hasIsIntolerance() => _isIntolerance != null;

  static SetupButtonStruct fromMap(Map<String, dynamic> data) =>
      SetupButtonStruct(
        name: data['name'] as String?,
        isIntolerance: data['isIntolerance'] as bool?,
      );

  static SetupButtonStruct? maybeFromMap(dynamic data) => data is Map
      ? SetupButtonStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'isIntolerance': _isIntolerance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'isIntolerance': serializeParam(
          _isIntolerance,
          ParamType.bool,
        ),
      }.withoutNulls;

  static SetupButtonStruct fromSerializableMap(Map<String, dynamic> data) =>
      SetupButtonStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        isIntolerance: deserializeParam(
          data['isIntolerance'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'SetupButtonStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SetupButtonStruct &&
        name == other.name &&
        isIntolerance == other.isIntolerance;
  }

  @override
  int get hashCode => const ListEquality().hash([name, isIntolerance]);
}

SetupButtonStruct createSetupButtonStruct({
  String? name,
  bool? isIntolerance,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SetupButtonStruct(
      name: name,
      isIntolerance: isIntolerance,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SetupButtonStruct? updateSetupButtonStruct(
  SetupButtonStruct? setupButton, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    setupButton
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSetupButtonStructData(
  Map<String, dynamic> firestoreData,
  SetupButtonStruct? setupButton,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (setupButton == null) {
    return;
  }
  if (setupButton.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && setupButton.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final setupButtonData =
      getSetupButtonFirestoreData(setupButton, forFieldValue);
  final nestedData =
      setupButtonData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = setupButton.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSetupButtonFirestoreData(
  SetupButtonStruct? setupButton, [
  bool forFieldValue = false,
]) {
  if (setupButton == null) {
    return {};
  }
  final firestoreData = mapToFirestore(setupButton.toMap());

  // Add any Firestore field values
  setupButton.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSetupButtonListFirestoreData(
  List<SetupButtonStruct>? setupButtons,
) =>
    setupButtons?.map((e) => getSetupButtonFirestoreData(e, true)).toList() ??
    [];
