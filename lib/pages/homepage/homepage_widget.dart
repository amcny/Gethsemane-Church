import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());

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
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              'l3k7xxeg' /* Hi,  */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFFF5F5F5),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          TextSpan(
                            text: FFLocalizations.of(context).getText(
                              '34ug5vtm' /* Praise the Lord
 */
                              ,
                            ),
                            style: const TextStyle(
                              color: Color(0xFFEF3939),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${valueOrDefault<String>(
                              functions.wishes(),
                              'wishes',
                            )} 👋',
                            style: const TextStyle(),
                          )
                        ],
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFFF5F5F5),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Container(
                      width: 70.0,
                      height: 70.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/gethsemane.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 20.0, 0.0, 0.0),
                  child: Text(
                    '${dateTimeFormat(
                      'MMMMEEEEd',
                      getCurrentTimestamp,
                      locale: FFLocalizations.of(context).languageCode,
                    )} -  Promise of the day',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFF5F5F5),
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: FlutterFlowExpandedImageView(
                          image: Image.network(
                            'https://i.postimg.cc/HsFtwCv6/verse.jpg',
                            fit: BoxFit.contain,
                          ),
                          allowRotation: false,
                          tag: 'imageTag',
                          useHeroAnimation: true,
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: 'imageTag',
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://i.postimg.cc/HsFtwCv6/verse.jpg',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 350.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'i3ikvkk4' /* YouTube Sermons */,
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: const Color(0xFFF5F5F5),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
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
