import 'package:app_buscacidadania/view/cadastro.dart';
import 'package:app_buscacidadania/view/checkin.dart';
import 'package:app_buscacidadania/view/home.dart';
import 'package:app_buscacidadania/view/notificacoes.dart';
import 'package:flutter/material.dart';

Widget menuDrawer(BuildContext context) {
  return Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2022/05/11/23/51/river-7190415_960_720.jpg"),
                          fit: BoxFit.cover
                        )
                      )
                    ),
                    Text("Rafael Ferreira Monteiro", style: TextStyle(fontSize: 18, color: Colors.white)),
                    Text("rafael@mtxit.com.br", style: TextStyle(fontSize: 14, color: Colors.white))
                  ]
                )
              )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Cadastro"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
              }
            ),
            ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text("Checkin"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Checkin()));
              }
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notificações"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Notificacoes()));
              }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Sobre"),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
              }
            )
          ]
        )
      );
}