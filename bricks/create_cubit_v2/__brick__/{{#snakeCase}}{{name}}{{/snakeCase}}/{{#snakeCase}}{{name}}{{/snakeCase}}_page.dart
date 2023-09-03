{{> common_header.md }}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{#pascalCase}}{{name}}Page{{/pascalCase}} extends StatefulWidget {
  const {{#pascalCase}}{{name}}Page{{/pascalCase}}({super.key});

  @override
  {{#pascalCase}}{{name}}Page{{/pascalCase}}State createState() => {{#pascalCase}}{{name}}Page{{/pascalCase}}State();
}

class {{#pascalCase}}{{name}}Page{{/pascalCase}}State extends State<{{#pascalCase}}{{name}}Page{{/pascalCase}}> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}>(
      create: (context) => {{#pascalCase}}{{name}}Cubit{{/pascalCase}}(
      ),
      child: BlocConsumer<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}, {{#pascalCase}}{{name}}State{{/pascalCase}}>(
        listener: (context, state) {
          switch (state) {
            case InitialState():
              break;
            case LoadingState():
              break;
            case LoadedState():
              //Navigator.of(context).pop();
              break;
            case ErrorState():
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content: SelectableText(state.errorMsg),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
              break;
          }
        },
        builder: (context, state) {
          final appBarTitle = '{{#titleCase}}{{name}}{{/titleCase}}';
          switch (state) {
            case LoadingState():

          return Scaffold(
            appBar: AppBar(
              title: const Text(appBarTitle),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
            case LoadedState():
              return const SizedBox.shrink();
            case InitialState():
            case ErrorState():
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text(appBarTitle),
              actions: [
                IconButton(
                  icon: const Icon(Icons.check),
                  onPressed: () {
                  },
                )
              ],
            ),
            body: const Center(
              child: Text('{{#titleCase}}{{name}}{{/titleCase}}'),
            ),
          );
        },
      ),
    );
  }
}
