import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'allergies_widget.dart' show AllergiesWidget;
import 'package:flutter/material.dart';

class AllergiesModel extends FlutterFlowModel<AllergiesWidget> {
  ///  Local state fields for this page.

  List<String> allergies = [];
  void addToAllergies(String item) => allergies.add(item);
  void removeFromAllergies(String item) => allergies.remove(item);
  void removeAtIndexFromAllergies(int index) => allergies.removeAt(index);
  void insertAtIndexInAllergies(int index, String item) =>
      allergies.insert(index, item);
  void updateAllergiesAtIndex(int index, Function(String) updateFn) =>
      allergies[index] = updateFn(allergies[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
