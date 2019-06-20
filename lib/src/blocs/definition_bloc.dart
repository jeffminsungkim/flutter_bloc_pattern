import 'package:rxdart/rxdart.dart';
import '../resources/repository.dart';
import '../models/definition_model.dart';

class DefinitionBloc {
  final _repository = Repository();
  final _definitionFetcher = PublishSubject<DefinitionModel>();

  Observable<DefinitionModel> get allDefinitions => _definitionFetcher.stream;

  fetchAllDefinition() async {
    DefinitionModel defModel = await _repository.fetchAllDefinitions();
    _definitionFetcher.sink.add(defModel);
  }

  dispose() {
    _definitionFetcher.close();
  }
}

final bloc = DefinitionBloc();