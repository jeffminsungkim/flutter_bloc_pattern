import 'package:flutter/material.dart';
import 'ui/definition_list.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: DefinitionList(),
      ),
    );
  }
}