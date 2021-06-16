import 'package:cadastro_de_alunos/screens/home/listOfStudents.dart';
import 'package:cadastro_de_alunos/screens/registers/form_edit.dart';
import 'package:cadastro_de_alunos/screens/registers/form_register.dart';
import 'package:cadastro_de_alunos/screens/registers/form_remove.dart';
import 'package:cadastro_de_alunos/screens/registers/form_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  if (Platform.isAndroid) {
    runApp(MaterialApp(
      title: "Cadastro de alunos",
      debugShowCheckedModeBanner: false,
      routes: {
        // Home
        "/": (BuildContext context) => ListOfStudents(),
        "/register": (BuildContext context) => FormRegister(),
        "/edit": (BuildContext context) => FormEdit(),
        "/remove": (BuildContext context) => FormRemove(),
        "/search": (BuildContext context) => FormSearch(),
      },
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
    ));
  } else {
    runApp(CupertinoApp());
  }
}
