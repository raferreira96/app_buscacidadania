import 'package:app_buscacidadania/view/widget/menu.dart';
import 'package:flutter/material.dart';

class Notificacoes extends StatefulWidget {

  const Notificacoes({ Key? key }) : super(key: key);

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {

  var listaCidadaos = [
    {"not_cidid":1, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal", "not_data":"29/02/1996", "not_status":"open", "not_descricao":"O cidadão deve comparecer imediatamento à Vara Federal X"},
    {"not_cidid":2, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 2", "not_data":"29/02/1996", "not_status":"open", "not_descricao":"O cidadão deve comparecer imediatamento à Vara Federal X"},
    {"not_cidid":3, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 3", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":4, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 4", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":5, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 5", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":6, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 6", "not_data":"29/02/1996", "not_status":"open", "not_descricao":"O cidadão deve comparecer imediatamento à Vara Federal X"},
    {"not_cidid":7, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 7", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":8, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 8", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":9, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 9", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""},
    {"not_cidid":10, "not_tpnid":"Intimação", "cid_nome":"Fulano de Tal 10", "not_data":"29/02/1996", "not_status":"closed", "not_descricao":""}
  ];

  var locais = [
    {"loc_nome":"CRAS - BAIRRO FELIZ", "loc_data":"22/04/2022 14:50"},
    {"loc_nome":"CRAS - BAIRRO TRISTE", "loc_data":"20/04/2022 14:32"},
    {"loc_nome":"ONG DORMIR FELIZ", "loc_data":"15/04/2022 14:50"},
    {"loc_nome":"CRAS - BAIRRO FELIZ", "loc_data":"10/04/2022 09:40"},
    {"loc_nome":"CRAS - BAIRRO FELIZ", "loc_data":"01/04/2022 15:50"},
  ];

  String statusNotificacao = "Não há notificações!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notificações"),
        centerTitle: true
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
                      subtitle: listaCidadaos[index]['not_status'] == "open" ? Text("Há notificações para o cidadão") : Text("Não há notificações"),
                      trailing: GestureDetector(
                        child: listaCidadaos[index]['not_status'] == "open" ? Icon(Icons.mail, color: Colors.red) : Icon(Icons.mail, color: Colors.blue),
                        onTap: () {
                          print("Clicou em Editar");
                        },
                      ),
                      onLongPress: () {
                        if (listaCidadaos[index]['not_status'] == "open") {
                          setState(() {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Visualizar Cidadão"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image(image: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'), width: 150),
                                    SizedBox(height: 10),
                                    Text("Nome: "+listaCidadaos[index]['cid_nome'].toString()),
                                    SizedBox(height: 10),
                                    Text("Data de Nascimento: "+listaCidadaos[index]['cid_datanasc'].toString()),
                                    SizedBox(height: 10),
                                    Text("Mensagem: "+listaCidadaos[index]['not_descricao'].toString(), style: TextStyle(color: Colors.red),)
                                  ]
                                ),
                                actions: [
                                  ElevatedButton(
                                    child: Text("Visualizar Locais"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      // setState(() {
                                      //   showDialog(
                                      //     context: context,
                                      //     builder: (context) => AlertDialog(
                                      //       title: Text("Últimos Registros do Cidadão"),
                                      //       content: ListView.builder(
                                      //         itemCount: locais.length,
                                      //         itemBuilder: (context, index) {
                                      //           return ListTile(
                                      //             title: Text(locais[index]['loc_nome'].toString()),
                                      //             trailing: Text(locais[index]['loc_data'].toString()),
                                      //           );
                                      //         }
                                      //       ),
                                      //       actions: [
                                      //         ElevatedButton(
                                      //           child: Text("OK"),
                                      //           onPressed: () {
                                      //             Navigator.of(context).pop();
                                      //           }
                                      //         )
                                      //       ]
                                      //     )
                                      //   );
                                      // });
                                    },
                                  )
                                ]
                              )
                            );
                          });
                        } else {
                          setState(() {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text("Visualizar Cidadão"),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(image: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'), width: 150),
                                    Text("Nome: "+listaCidadaos[index]['cid_nome'].toString()),
                                    Text("Não há notificações para este Cidadão!")
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
                        }
                      },
                      
                    );
                  }
                )
              )
            )
          ]
        ),
      ),
    );
  }
}