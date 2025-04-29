import '/backend/api_requests/api_calls.dart';
import '/components/nav_bar/nav_bar_widget.dart';
import '/components/title_with_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  bool showWarning = false;

  String? errorMessage;

  ///  State fields for stateful widgets in this page.

  // Model for Title_with_back component.
  late TitleWithBackModel titleWithBackModel;
  // State field(s) for SearchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (search)] action in SearchField widget.
  ApiCallResponse? searchApiResult;
  // Stores action output result for [Backend Call - API (search)] action in Icon widget.
  ApiCallResponse? searchApiResult2;
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
