import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';

class Checkin extends StatefulWidget {
  const Checkin({ Key? key }) : super(key: key);

  @override
  State<Checkin> createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkins"),
        centerTitle: true
      ),
      drawer: menuDrawer(context),
      body: Container(),
    );
  }
}