import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'signin_model.dart';
export 'signin_model.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({super.key});

  @override
  State<SigninWidget> createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget>
    with TickerProviderStateMixin {
  late SigninModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SigninModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

    _model.emailAddressCreateTextController ??= TextEditingController();
    _model.emailAddressCreateFocusNode ??= FocusNode();

    _model.passwordCreateTextController ??= TextEditingController();
    _model.passwordCreateFocusNode ??= FocusNode();

    _model.passwordConfirmTextController ??= TextEditingController();
    _model.passwordConfirmFocusNode ??= FocusNode();

    animationsMap.addAll({
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-0.349, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 60.0),
            end: const Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(-0.349, 0),
            end: const Offset(0, 0),
          ),
        ],
      ),
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 44.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            constraints: const BoxConstraints(
                              maxWidth: 602.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'blablabla',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 700.0,
                          constraints: const BoxConstraints(
                            maxWidth: 602.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: const Alignment(-1.0, 0),
                                  child: TabBar(
                                    isScrollable: true,
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    labelPadding: const EdgeInsets.all(16.0),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                    unselectedLabelStyle:
                                        FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                    indicatorColor:
                                        FlutterFlowTheme.of(context).primary,
                                    indicatorWeight: 4.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 16.0, 12.0),
                                    tabs: const [
                                      Tab(
                                        text: 'Sign In',
                                      ),
                                      Tab(
                                        text: 'Sign Up',
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [() async {}, () async {}][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 24.0),
                                                child: Text(
                                                  'Let\'s get started by filling out the form below.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressTextController,
                                                    focusNode: _model
                                                        .emailAddressFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.email
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(24.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .emailAddressTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordTextController,
                                                    focusNode: _model
                                                        .passwordFocusNode,
                                                    autofocus: false,
                                                    autofillHints: const [
                                                      AutofillHints.password
                                                    ],
                                                    obscureText: !_model
                                                        .passwordVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(24.0),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _model
                                                                  .passwordVisibility =
                                                              !_model
                                                                  .passwordVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .passwordTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();

                                                      final user =
                                                          await authManager
                                                              .signInWithEmail(
                                                        context,
                                                        _model
                                                            .emailAddressTextController
                                                            .text,
                                                        _model
                                                            .passwordTextController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                          'JoinGames',
                                                          context.mounted);
                                                    },
                                                    text: 'Sign In',
                                                    options: FFButtonOptions(
                                                      width: 230.0,
                                                      height: 52.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () {
                                                      print(
                                                          'Button pressed ...');
                                                    },
                                                    text: 'Forgot Password',
                                                    options: FFButtonOptions(
                                                      width: 230.0,
                                                      height: 44.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation1']!),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 24.0),
                                                child: Text(
                                                  'Let\'s get started by filling out the form below.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .emailAddressCreateTextController,
                                                    focusNode: _model
                                                        .emailAddressCreateFocusNode,
                                                    autofocus: true,
                                                    autofillHints: const [
                                                      AutofillHints.email
                                                    ],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(24.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .emailAddressCreateTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordCreateTextController,
                                                    focusNode: _model
                                                        .passwordCreateFocusNode,
                                                    autofocus: false,
                                                    autofillHints: const [
                                                      AutofillHints.password
                                                    ],
                                                    obscureText: !_model
                                                        .passwordCreateVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(24.0),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _model
                                                                  .passwordCreateVisibility =
                                                              !_model
                                                                  .passwordCreateVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordCreateVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .passwordCreateTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 16.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model
                                                        .passwordConfirmTextController,
                                                    focusNode: _model
                                                        .passwordConfirmFocusNode,
                                                    autofocus: false,
                                                    autofillHints: const [
                                                      AutofillHints.password
                                                    ],
                                                    obscureText: !_model
                                                        .passwordConfirmVisibility,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          'Confirm Password',
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      contentPadding:
                                                          const EdgeInsets.all(24.0),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => _model
                                                                  .passwordConfirmVisibility =
                                                              !_model
                                                                  .passwordConfirmVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          _model.passwordConfirmVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    minLines: 1,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .passwordConfirmTextControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      if (_model
                                                              .passwordCreateTextController
                                                              .text !=
                                                          _model
                                                              .passwordConfirmTextController
                                                              .text) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                              'Passwords don\'t match!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }

                                                      final user = await authManager
                                                          .createAccountWithEmail(
                                                        context,
                                                        _model
                                                            .emailAddressCreateTextController
                                                            .text,
                                                        _model
                                                            .passwordCreateTextController
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await UsersRecord
                                                          .collection
                                                          .doc(user.uid)
                                                          .update(
                                                              createUsersRecordData(
                                                            email: _model
                                                                .emailAddressTextController
                                                                .text,
                                                            defaultpic:
                                                                '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',
                                                          ));

                                                      context.goNamedAuth(
                                                          'JoinGames',
                                                          context.mounted);
                                                    },
                                                    text: 'Create Account',
                                                    options: FFButtonOptions(
                                                      width: 230.0,
                                                      height: 52.0,
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      iconPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      elevation: 3.0,
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation2']!),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Container(
                    width: 100.0,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80',
                        ),
                      ),
                      borderRadius: BorderRadius.circular(0.0),
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
