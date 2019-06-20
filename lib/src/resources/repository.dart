import 'dart:async';
import 'definition_api_provider.dart';
import '../models/definition_model.dart';

class Repository {
  final defApiProvider = DefinitionApiProvider();

  Future<DefinitionModel> fetchAllDefinitions() => defApiProvider.fetchWordList();
}