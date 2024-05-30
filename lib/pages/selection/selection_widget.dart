import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'selection_model.dart';
export 'selection_model.dart';

class SelectionWidget extends StatefulWidget {
  const SelectionWidget({super.key});

  @override
  State<SelectionWidget> createState() => _SelectionWidgetState();
}

class _SelectionWidgetState extends State<SelectionWidget> {
  late SelectionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectionModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 0.0, 0.0),
                  child: Text(
                    'Select your Church Branch',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFF5F5F5),
                          letterSpacing: 0.1,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 0.0, 0.0),
                  child: FlutterFlowRadioButton(
                    options: [
                      'NGO\'s Colony (NGO\'s  కాలనీ)',
                      'Etukuru (ఏటుకూరు)',
                      'Pulladi Gunta (పుల్లడిగుంట)',
                      'Nethaji Nagar (నేతాజీ నగర్)',
                      'Rajendra Nagar (రాజేంద్ర నగర్)'
                    ].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(null),
                    optionHeight: 50.0,
                    optionWidth: MediaQuery.sizeOf(context).width * 1.0,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFCACACA),
                              fontSize: 17.5,
                              letterSpacing: 0.0,
                            ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFF5F5F5),
                              letterSpacing: 0.0,
                            ),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: const Color(0xFFEF3939),
                    inactiveRadioButtonColor: const Color(0xFFCACACA),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 16.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().branch = _model.radioButtonValue!;
                    });

                    context.goNamed('homepage');
                  },
                  text: 'Submit',
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: 60.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFFEF3939),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    elevation: 1.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
