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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage('assets/img/fingerprint.png'), width:150),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                child: Text('Realizar Checkin', style: TextStyle(fontSize: 18)),
                onPressed: () {},
              ),
            )
          ]
        )
      )
    );
  }
}