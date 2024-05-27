import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'prayers_model.dart';
export 'prayers_model.dart';

class PrayersWidget extends StatefulWidget {
  const PrayersWidget({super.key});

  @override
  State<PrayersWidget> createState() => _PrayersWidgetState();
}

class _PrayersWidgetState extends State<PrayersWidget> {
  late PrayersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrayersModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
        backgroundColor: const Color(0xFF131313),
        appBar: AppBar(
          backgroundColor: const Color(0xFF131313),
          automaticallyImplyLeading: false,
          title: Text(
            'Prayer Requests',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: const Color(0xFFF5F5F5),
                  fontSize: 20.0,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
      ),
    );
  }
}
