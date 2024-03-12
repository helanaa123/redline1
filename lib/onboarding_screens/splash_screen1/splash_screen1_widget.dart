import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'splash_screen1_model.dart';
export 'splash_screen1_model.dart';

class SplashScreen1Widget extends StatefulWidget {
  const SplashScreen1Widget({super.key});

  @override
  State<SplashScreen1Widget> createState() => _SplashScreen1WidgetState();
}

class _SplashScreen1WidgetState extends State<SplashScreen1Widget> {
  late SplashScreen1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreen1Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('splashScreen2');
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: 453.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/logo-(1)_1.png',
                    width: 237.27,
                    height: 134.0,
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.3),
                  child: Lottie.asset(
                    'assets/lottie_animations/Animation_-_1707900845089-2.json',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
