import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget>
    with TickerProviderStateMixin {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'circleImageOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 1600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.goNamed(
                          'onboarding',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: const TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.leftToRight,
                            ),
                          },
                        );
                      },
                      child: Container(
                        width: 54.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: const Color(0xFF3D3D3D),
                            width: 3.5,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_left_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 46.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 60.0,
                      height: 60.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/gethsemane.jpg',
                        fit: BoxFit.fill,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['circleImageOnPageLoadAnimation']!),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 85.0, 0.0, 10.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      's6mf1q21' /* Sign up */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Raleway',
                          color: const Color(0xFFF5F5F5),
                          fontSize: 32.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 15.0),
                child: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'g9tyig20' /* Email */,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF3D3D3D),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEF3939),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFFF5F5F5),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                      ),
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.textController2,
                  focusNode: _model.textFieldFocusNode2,
                  autofocus: false,
                  obscureText: !_model.passwordVisibility,
                  decoration: InputDecoration(
                    labelText: FFLocalizations.of(context).getText(
                      'ri25yjtw' /* Password */,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF3D3D3D),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFEF3939),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => _model.passwordVisibility =
                            !_model.passwordVisibility,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        _model.passwordVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: const Color(0xFFC7C7C7),
                        size: 24.0,
                      ),
                    ),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: const Color(0xFFF5F5F5),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                      ),
                  validator:
                      _model.textController2Validator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 35.0, 16.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('signup');
                  },
                  text: FFLocalizations.of(context).getText(
                    '9et1id6q' /* Submit */,
                  ),
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'login',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.leftToRight,
                          ),
                        },
                      );
                    },
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              '6id43nkg' /* Already have an account?   */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFC7C7C7),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'b72xulji' /* Login here */,
                            ),
                            style: const TextStyle(
                              color: Color(0xFFEF3939),
                              fontWeight: FontWeight.w800,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFC7C7C7),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.62),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'v4jdzt1z' /* Gethsemane Church */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Raleway',
                              color: const Color(0xFFE3E3E3),
                              fontSize: 30.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Flexible(
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '0qbt7yop' /* Revive */,
                                ),
                                style: const TextStyle(),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'bq162vwv' /*  ·  */,
                                ),
                                style: const TextStyle(
                                  color: Color(0xFFEF3939),
                                  fontSize: 20.0,
                                ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '0vvt46ub' /* Refresh */,
                                ),
                                style: const TextStyle(),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  '0yjcocfo' /*  ·  */,
                                ),
                                style: const TextStyle(
                                  color: Color(0xFFEF3939),
                                  fontSize: 20.0,
                                ),
                              ),
                              TextSpan(
                                text: FFLocalizations.of(context).getText(
                                  'nx16qtmt' /* Reborn */,
                                ),
                                style: const TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFE3E3E3),
                                  fontSize: 16.0,
                                  letterSpacing: 0.5,
                                ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 10.0)),
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
