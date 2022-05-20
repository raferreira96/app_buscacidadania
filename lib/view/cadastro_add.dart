import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CadastroAdd extends StatefulWidget {
  const CadastroAdd({ Key? key }) : super(key: key);

  @override
  State<CadastroAdd> createState() => _CadastroAddState();
}

class _CadastroAddState extends State<CadastroAdd> {

  TextEditingController txtNome = TextEditingController();
  TextEditingController txtData = TextEditingController();
  // String data = "";
  

  // void cadastrar() async {
  //   String request = "http://mtxit.ddns.net:8080/api/v1/usuarios/login";
  //   http.Response response = await http.post(Uri.parse(request),
  //                                           headers: {'Content-Type': 'application/json'},
  //                                           body: json.encode({'cid_bio': cid_bio, 'cid_nome':txtNome.text, "cid_datanasc":}));
    
    
    
  //   }

  String netImage = 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Cidadão"),
        centerTitle: true
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtNome,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome"
              ),
              style: TextStyle(
                fontSize: 18
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtData,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                labelText: "Data de Nascimento"
              ),
              style: TextStyle(
                fontSize: 18
              ),
              maxLength: 10,
            ),
            SizedBox(height: 30),
            Container(
              width: 250,
              height: 250,
              child: Image(image: NetworkImage(netImage), fit: BoxFit.cover),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text("Foto"),
              onPressed: (){},
            )
          ]
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {}
      )
    );
  }
}