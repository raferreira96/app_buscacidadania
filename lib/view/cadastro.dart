import 'package:app_buscacidadania/view/cadastro_add.dart';
import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({ Key? key }) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastros"),
        centerTitle: true,
      ),
      drawer: menuDrawer(context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
            ]
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CadastroAdd()));
        }
      )
    );
  }
}