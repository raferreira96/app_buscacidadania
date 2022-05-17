import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({ Key? key }) : super(key: key);

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificações"),
        centerTitle: true
      ),
      drawer: menuDrawer(context),
      body: SingleChildScrollView(),
    );
  }
}