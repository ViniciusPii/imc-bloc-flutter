import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'src/material_app.dart';
import 'package:imc_bloc/src/cupertino_app.dart';

void main() {
  Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
}
