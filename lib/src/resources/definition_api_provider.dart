import 'dart:async';
import 'package:http/http.dart';
import 'dart:convert';
import '../models/definition_model.dart';

class DefinitionApiProvider {
  Client client = Client();
  
  Future<DefinitionModel> fetchWordList() async {
    print("Entered fetchWordList()");

    final response = await client.get("http://localhost:8080/api/v1/definition/all");

    print(response.body.toString());

    if (response.statusCode == 200) {
      return DefinitionModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load.');
    }
  }
}