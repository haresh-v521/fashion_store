// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore: unnecessary_import

import '../widgets/countrypicker.dart';

Future customAction(BuildContext context) async {
  // open  alert pop up

  return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          backgroundColor: Colors.white,
          elevation: 0,
          scrollable: true,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          content: Countrypicker(),
        );
      });
}
