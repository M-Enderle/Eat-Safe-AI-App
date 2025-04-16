import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'intolerance_widget.dart' show IntoleranceWidget;
import 'package:flutter/material.dart';

class IntoleranceModel extends FlutterFlowModel<IntoleranceWidget> {
  ///  Local state fields for this page.

  List<String> intolerances = [];
  void addToIntolerances(String item) => intolerances.add(item);
  void removeFromIntolerances(String item) => intolerances.remove(item);
  void removeAtIndexFromIntolerances(int index) => intolerances.removeAt(index);
  void insertAtIndexInIntolerances(int index, String item) =>
      intolerances.insert(index, item);
  void updateIntolerancesAtIndex(int index, Function(String) updateFn) =>
      intolerances[index] = updateFn(intolerances[index]);

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
