import '/components/nav_bar/nav_bar_widget.dart';
import '/components/title_with_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title_with_back component.
  late TitleWithBackModel titleWithBackModel;
  // State field(s) for SearchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    titleWithBackModel = createModel(context, () => TitleWithBackModel());
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    titleWithBackModel.dispose();
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();

    navBarModel.dispose();
  }
}
