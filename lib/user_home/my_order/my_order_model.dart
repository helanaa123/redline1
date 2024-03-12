import '/components/bottomsheet_widget.dart';
import '/components/iwww_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'my_order_widget.dart' show MyOrderWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyOrderModel extends FlutterFlowModel<MyOrderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for iwww component.
  late IwwwModel iwwwModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    iwwwModel = createModel(context, () => IwwwModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    iwwwModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
