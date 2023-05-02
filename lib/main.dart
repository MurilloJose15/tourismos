import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'views/telaAriquemes.dart';
import 'views/telaOuroPreto.dart';
import 'views/telaVilhena.dart';
import 'views/telaPortoVelho.dart';
import 'homeScreen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFE8F5E9),
        ),
        routes: {
          '/' : (_) => HomeScreen(),
          '/tela1' : (_) => TelaPortoVelho(),
          '/tela2': (_) => TelaAriquemes(),
          '/tela3': (_) => TelaOuroPreto(),
          '/tela4' : (_) => TelaVilhena(),
        },
      )));
}
