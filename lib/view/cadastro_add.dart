import 'package:flutter/material.dart';

class CadastroAdd extends StatefulWidget {
  const CadastroAdd({ Key? key }) : super(key: key);

  @override
  State<CadastroAdd> createState() => _CadastroAddState();
}

class _CadastroAddState extends State<CadastroAdd> {

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