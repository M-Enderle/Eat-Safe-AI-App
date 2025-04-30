import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
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

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _PastSearches = (await secureStorage.getStringList('ff_PastSearches'))
              ?.map((x) {
                try {
                  return SearchResultStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _PastSearches;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

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

  List<SearchResultStruct> _PastSearches = [];
  List<SearchResultStruct> get PastSearches => _PastSearches;
  set PastSearches(List<SearchResultStruct> value) {
    _PastSearches = value;
    secureStorage.setStringList(
        'ff_PastSearches', value.map((x) => x.serialize()).toList());
  }

  void deletePastSearches() {
    secureStorage.delete(key: 'ff_PastSearches');
  }

  void addToPastSearches(SearchResultStruct value) {
    PastSearches.add(value);
    secureStorage.setStringList(
        'ff_PastSearches', _PastSearches.map((x) => x.serialize()).toList());
  }

  void removeFromPastSearches(SearchResultStruct value) {
    PastSearches.remove(value);
    secureStorage.setStringList(
        'ff_PastSearches', _PastSearches.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPastSearches(int index) {
    PastSearches.removeAt(index);
    secureStorage.setStringList(
        'ff_PastSearches', _PastSearches.map((x) => x.serialize()).toList());
  }

  void updatePastSearchesAtIndex(
    int index,
    SearchResultStruct Function(SearchResultStruct) updateFn,
  ) {
    PastSearches[index] = updateFn(_PastSearches[index]);
    secureStorage.setStringList(
        'ff_PastSearches', _PastSearches.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPastSearches(int index, SearchResultStruct value) {
    PastSearches.insert(index, value);
    secureStorage.setStringList(
        'ff_PastSearches', _PastSearches.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
