import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'order_confirmation_model.dart';
export 'order_confirmation_model.dart';

class OrderConfirmationWidget extends StatefulWidget {
  const OrderConfirmationWidget({super.key});

  @override
  State<OrderConfirmationWidget> createState() =>
      _OrderConfirmationWidgetState();
}

class _OrderConfirmationWidgetState extends State<OrderConfirmationWidget> {
  late OrderConfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderConfirmationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFE91045),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                    child: Icon(
                      Icons.check_circle,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 148.58,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.01, -0.31),
                  child: Text(
                    'Your Order',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.14, -0.21),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                    child: Text(
                      'Confirmed',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 47.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 350.0,
              child: Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).accent4,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.09),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                child: Text(
                  'Thank you for order. You will receive email\nconfirmation shortly.\n\nCheck the status of your order on the Order tracking page',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 12.0,
                      ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.24, 0.48),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0xFFE91045),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 65.0,
                          fillColor: Color(0xFFE91045),
                          icon: Icon(
                            Icons.home_sharp,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('HomePage');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.22, 0.51),
                        child: Text(
                          'Home',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 10.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.2, 0.48),
                        child: FlutterFlowIconButton(
                          borderColor: Color(0xFFE91045),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 65.0,
                          fillColor: Color(0xFFE91045),
                          icon: Icon(
                            Icons.add,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 35.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('tabBarSteps');
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'New Booking',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 10.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
