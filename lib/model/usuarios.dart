import 'dart:convert';

class Usuarios {
  var jsonUsuarios;

  getJson() {
    return jsonEncode(jsonUsuarios);
  }

  // void set setJson(var json) {
  //   jsonUsuarios = json;
  // }

  void setJson(var body) {
    jsonUsuarios = body;
  }

}