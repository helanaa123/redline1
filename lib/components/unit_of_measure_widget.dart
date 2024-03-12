import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'unit_of_measure_model.dart';
export 'unit_of_measure_model.dart';

class UnitOfMeasureWidget extends StatefulWidget {
  const UnitOfMeasureWidget({super.key});

  @override
  State<UnitOfMeasureWidget> createState() => _UnitOfMeasureWidgetState();
}

class _UnitOfMeasureWidgetState extends State<UnitOfMeasureWidget> {
  late UnitOfMeasureModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnitOfMeasureModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
      child: FutureBuilder<ApiCallResponse>(
        future: GetUOMsCall.call(),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitCircle(
                  color: Color(0xFFE91045),
                  size: 50.0,
                ),
              ),
            );
          }
          final listViewGetUOMsResponse = snapshot.data!;
          return Builder(
            builder: (context) {
              final name = getJsonField(
                listViewGetUOMsResponse.jsonBody,
                r'''$.data''',
              ).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: name.length,
                itemBuilder: (context, nameIndex) {
                  final nameItem = name[nameIndex];
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context, nameItem.toString());
                      },
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            getJsonField(
                              nameItem,
                              r'''$.data[:].name''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
