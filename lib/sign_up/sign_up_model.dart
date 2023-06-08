import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Backend Call - API (Sign up)] action in Container widget.
  ApiCallResponse? signupdata;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  String? _textController5Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter username';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Invalid Username';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter valid email';
    }

    if (!RegExp(
            '[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#\$%&\'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?')
        .hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController7;
  late bool passwordVisibility3;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter password';
    }

    if (!RegExp('^[0-9]').hasMatch(val)) {
      return 'Enter digits only';
    }
    return null;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController8;
  late bool passwordVisibility4;
  String? Function(BuildContext, String?)? textController8Validator;
  // Stores action output result for [Backend Call - API (Sign up)] action in Container widget.
  ApiCallResponse? signupdata1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
    textController5Validator = _textController5Validator;
    textController6Validator = _textController6Validator;
    passwordVisibility3 = false;
    textController7Validator = _textController7Validator;
    passwordVisibility4 = false;
  }

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
  }

  /// Additional helper methods are added here.

}
