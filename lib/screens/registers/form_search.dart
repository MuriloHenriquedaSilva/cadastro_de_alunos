import 'dart:collection';

import 'package:cadastro_de_alunos/DAO/studentDAO.dart';
import 'package:cadastro_de_alunos/model/student.dart';
import 'package:cadastro_de_alunos/shared/menu.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class FormSearch extends StatelessWidget {
  final TextEditingController registrationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pesquisa de aluno"),
      ),
      drawer: Menu(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "ID do aluno",
                ),
                keyboardType: TextInputType.number,
                controller: registrationController,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  saveSearch(context);
                },
                child: Text("Pesquisar aluno"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Student> saveSearch(BuildContext mainContext) async {
    int _registration = int.parse(registrationController.text);

    List<Map<dynamic, dynamic>> result =
        await StudentDAO.searchRecord("students", _registration);

    return Student.fromMap(result.first);

    
  }
  
}
