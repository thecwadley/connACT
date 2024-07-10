import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'ratingdropdown_model.dart';
export 'ratingdropdown_model.dart';

class RatingdropdownWidget extends StatefulWidget {
  const RatingdropdownWidget({
    super.key,
    this.parameter1,
    this.parameter3,
  });

  final bool? parameter1;
  final DocumentReference? parameter3;

  @override
  State<RatingdropdownWidget> createState() => _RatingdropdownWidgetState();
}

class _RatingdropdownWidgetState extends State<RatingdropdownWidget> {
  late RatingdropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingdropdownModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.parameter1 == true,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(70.0, 10.0, 30.0, 10.0),
        child: FlutterFlowDropDown<String>(
          controller: _model.dropDownValueController ??=
              FormFieldController<String>(null),
          options: const ['0', '1', '2', '3', '4', '5'],
          onChanged: (val) async {
            setState(() => _model.dropDownValue = val);
            await widget.parameter3!.update({
              ...mapToFirestore(
                {
                  'Rating': FieldValue.arrayUnion(
                      [int.parse((_model.dropDownValue!))]),
                },
              ),
            });
          },
          width: 150.0,
          height: 56.0,
          textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Readex Pro',
                letterSpacing: 0.0,
              ),
          hintText: 'his/her rating',
          icon: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 2.0,
          borderColor: FlutterFlowTheme.of(context).alternate,
          borderWidth: 2.0,
          borderRadius: 8.0,
          margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
          hidesUnderline: true,
          isOverButton: true,
          isSearchable: false,
          isMultiSelect: false,
        ),
      ),
    );
  }
}
