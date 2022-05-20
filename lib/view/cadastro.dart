import 'package:app_buscacidadania/view/cadastro_add.dart';
import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cadastro extends StatefulWidget {

  const Cadastro({ Key? key }) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {

  var listaCidadaos = [
    {"cid_id":1, "cid_bio":"1234567890123", "cid_nome":"Fulano de Tal", "cid_datanasc":"29/02/1996"},
    {"cid_id":2, "cid_bio":"1234765389012", "cid_nome":"Fulano de Tal 2", "cid_datanasc":"29/02/1996"},
    {"cid_id":3, "cid_bio":"1987356780123", "cid_nome":"Fulano de Tal 3", "cid_datanasc":"29/02/1996"},
    {"cid_id":4, "cid_bio":"0324567890123", "cid_nome":"Fulano de Tal 4", "cid_datanasc":"29/02/1996"},
    {"cid_id":5, "cid_bio":"1234921643123", "cid_nome":"Fulano de Tal 5", "cid_datanasc":"29/02/1996"},
    {"cid_id":6, "cid_bio":"1234911220123", "cid_nome":"Fulano de Tal 6", "cid_datanasc":"29/02/1996"},
    {"cid_id":7, "cid_bio":"1987776540123", "cid_nome":"Fulano de Tal 7", "cid_datanasc":"29/02/1996"},
    {"cid_id":8, "cid_bio":"1234567890123", "cid_nome":"Fulano de Tal 8", "cid_datanasc":"29/02/1996"},
    {"cid_id":9, "cid_bio":"1234567890123", "cid_nome":"Fulano de Tal 9", "cid_datanasc":"29/02/1996"},
    {"cid_id":10, "cid_bio":"1234567890123", "cid_nome":"Fulano de Tal 10", "cid_datanasc":"29/02/1996"}
  ];

  // var listaCidadaos;

  // // var lista;
  // void listar() async {
  //   String request = "http://mtxit.ddns.net:8080/api/v1/cidadaos";
  //   http.Response response = await http.get(Uri.parse(request));
  //   listaCidadaos = jsonDecode(response.body);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastros"),
        centerTitle: true,
      ),
      drawer: menuDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  itemCount: listaCidadaos.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(listaCidadaos[index]['cid_nome'].toString()),
                      trailing: GestureDetector(
                        child: Icon(Icons.edit, color: Colors.blue),
                        onTap: () {
                          print("Clicou em Editar");
                        },
                      ),
                      onLongPress: () {
                        setState(() {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text("Visualizar Cidadão"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image(image: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'), width: 150),
                                  SizedBox(height: 10),
                                  Text("Nome: "+listaCidadaos[index]['cid_nome'].toString()),
                                  SizedBox(height: 10),
                                  Text("Data de Nascimento: "+listaCidadaos[index]['cid_datanasc'].toString())
                                ]
                              ),
                              actions: [
                                ElevatedButton(
                                  child: Text("OK"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ]
                            )
                          );
                        });
                      },
                    );
                  }
                )
              )
            )
          ]
        ),
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