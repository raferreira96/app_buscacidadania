import 'package:app_buscacidadania/model/usuarios.dart';
import 'package:app_buscacidadania/view/home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  void logar() async {
    String request = "http://mtxit.ddns.net:8080/api/v1/usuarios/login";
    http.Response response = await http.post(Uri.parse(request),
                                            headers: {'Content-Type': 'application/json'},
                                            body: json.encode({'username': txtUsername.text, 'password':txtPassword.text}));
    var jsonResult = jsonDecode(response.body);
    print(jsonResult);
    Usuarios u = Usuarios();
    u.setJson(jsonResult);
    
    if(!jsonResult.isEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      setState(() {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Atenção"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Usuário ou senha inválidos!")
              ]
            ),
          actions: [
            ElevatedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ]
          )
        );
      });
    }
    
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/img/trf5-completo.png', width:300),
                  ]
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/img/logo.png'),
                      radius: 80,
                      backgroundColor: Colors.white,
                    ),
                    Text("BuscaCidadania", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                    SizedBox(height: 15),
                    TextField(
                      controller: txtUsername,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "Usuário"
                      ),
                      style: TextStyle(
                        fontSize: 20
                      )
                    ),
                    SizedBox(height: 15),
                    TextField(
                      controller: txtPassword,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha"
                      ),
                      style: TextStyle(
                        fontSize: 20
                      )
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        child: Text("Entrar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        onPressed: logar
                      ),
                    )
                  ]
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Grupo TRF5 - Centro de Inteligência")
                  ]
                )
              ]
            ),
          ),
        )
      )
    );
  }
}