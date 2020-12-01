import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dtoEmployee.dart';

void main() {
  runApp(VistaAllEmpleados());
}

class VistaAllEmpleados extends StatefulWidget {
  @override
  _VistaAllEmpleadosState createState() => _VistaAllEmpleadosState();
}

class _VistaAllEmpleadosState extends State<VistaAllEmpleados> {

  List<dtoEmployee> lstAllEmpleados = List<dtoEmployee>();

  Future<List<dtoEmployee>> GetAllEmpleados() async{
    var url = 'https://192.168.0.5:5001/api/Employee';
    var response = await http.get(url).timeout(Duration(seconds: 90));
    var datosJson = jsonDecode(response.body);

    var lstTmpEmpleados = List<dtoEmployee>();
    for(var empleadoJson in datosJson){
       lstTmpEmpleados.add(dtoEmployee.fromJson(empleadoJson));
    }

    return lstTmpEmpleados;
  }

  @override void initState() {
    // TODO: implement initState
    super.initState();
    GetAllEmpleados().then( (values){
      setState(() {
        lstAllEmpleados.addAll(values);
      });
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Empleados'),),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: lstAllEmpleados.length,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.blue, width: 1)
                      )
                    ),
                    child: Text(lstAllEmpleados[index].Person.FirstName + ' '
                        + lstAllEmpleados[index].Person.LastName,
                        style: TextStyle(fontSize: 16),
                    ),
                  );
                },
              )
          )
        ],
      ),
    );
  }
}

