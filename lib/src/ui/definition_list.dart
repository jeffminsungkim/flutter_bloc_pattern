import 'package:flutter/material.dart';
import '../models/definition_model.dart';
import '../blocs/definition_bloc.dart';

class DefinitionList extends StatelessWidget {
  const DefinitionList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bloc.fetchAllDefinition();

    return Scaffold(
      appBar: AppBar(
        title: Text('Insalingo Definition API Test'),
      ),
      body: StreamBuilder(
        stream: bloc.allDefinitions,
        builder: (context, AsyncSnapshot<DefinitionModel> snapshot) {
          if (snapshot.hasData) {
            return buildList(snapshot);
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<DefinitionModel> snapshot) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: snapshot.data.words.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(snapshot.data.words[i].word),
          subtitle: Text(snapshot.data.words[i].summary),
        );
      }
    );
  }
}