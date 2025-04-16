import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<SetupButtonStruct> _setupButtons = [
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Fructose\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Lactose\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Histamin\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Caffeine\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Sulfite\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Gluten\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Glutamate\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Soy\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"FODMAP\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Sorbit\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Egg\",\"isIntolerance\":\"true\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Peanuts\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Soy\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Almonds\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Cashews\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Pecans\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Milk\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Eggs\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Fish\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Shellfish\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Walnuts\",\"isIntolerance\":\"false\"}')),
    SetupButtonStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Wheat\",\"isIntolerance\":\"false\"}'))
  ];
  List<SetupButtonStruct> get setupButtons => _setupButtons;
  set setupButtons(List<SetupButtonStruct> value) {
    _setupButtons = value;
  }

  void addToSetupButtons(SetupButtonStruct value) {
    setupButtons.add(value);
  }

  void removeFromSetupButtons(SetupButtonStruct value) {
    setupButtons.remove(value);
  }

  void removeAtIndexFromSetupButtons(int index) {
    setupButtons.removeAt(index);
  }

  void updateSetupButtonsAtIndex(
    int index,
    SetupButtonStruct Function(SetupButtonStruct) updateFn,
  ) {
    setupButtons[index] = updateFn(_setupButtons[index]);
  }

  void insertAtIndexInSetupButtons(int index, SetupButtonStruct value) {
    setupButtons.insert(index, value);
  }
}
