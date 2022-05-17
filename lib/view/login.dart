import 'package:app_buscacidadania/view/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

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
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));}
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