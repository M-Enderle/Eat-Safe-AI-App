import '/components/nav_bar/nav_bar_widget.dart';
import '/components/title_with_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title_with_back component.
  late TitleWithBackModel titleWithBackModel;
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
    navBarModel.dispose();
  }
}
