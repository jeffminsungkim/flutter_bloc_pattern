class DefinitionModel {
  int _id;
  List<_Word> _words = [];

  DefinitionModel.fromJson(List<Object> parsedJson) {
    List<_Word> temp = [];
    for (int i = 0; i < parsedJson.length; i++) {
      print(parsedJson[i]);
      _Word result = _Word(parsedJson[i]);
      temp.add(result);
    }
    _words = temp;
  }

  List<_Word> get words => _words;
}

class _Word {
  int _id;
  int _clap;
  String _word;
  String _summary;
  String _definition;
  String _author;
  String _created_at;

  _Word(res) {
    _id = res['id'];
    _clap = res['clap'];
    _word = res['word'];
    _summary = res['summary'];
    _definition = res['definition'];
    _author = res['author'];
    _created_at = res['createdAt'];
  }
  
  String get word => _word;
  String get summary => _summary;
}