import 'package:app_buscacidadania/view/cadastro.dart';
import 'package:app_buscacidadania/view/checkin.dart';
import 'package:app_buscacidadania/view/notificacoes.dart';
import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(
        title: Text("BuscaCidadania"),
        centerTitle: true
      ),
      drawer: menuDrawer(context),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/img/cadastro.png'),
                      SizedBox(
                        height: 10,
                        width: 150,
                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5))),
                      ),
                      Text("Cadastro", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                    ]
                  )
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Checkin()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/img/checkin.png'),
                      SizedBox(
                        height: 10,
                        width: 150,
                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5))),
                      ),
                      Text("Checkin", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                    ]
                  )
                ),
              ),
              SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Notificacoes()));
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 200,
                  height: 200,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/img/notificacoes.png'),
                      SizedBox(
                        height: 10,
                        width: 150,
                        child: DecoratedBox(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5))),
                      ),
                      Text("Notificações", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                    ]
                  )
                ),
              )
            ]
          )
        ),
      )
    );
  }
}