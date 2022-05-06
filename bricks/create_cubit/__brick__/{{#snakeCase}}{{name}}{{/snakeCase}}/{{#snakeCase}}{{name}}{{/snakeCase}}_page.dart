{{> common_header.md }}

import 'package:balansik/app/core/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/features/{{#snakeCase}}{{name}}{{/snakeCase}}/cubit/{{#snakeCase}}{{name}}_cubit{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}}Page{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}Page{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{#titleCase}}{{name}}{{/titleCase}}')),
      body: BlocProvider<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}>(
        create: (context) => getIt(),
        child: BlocBuilder<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}, {{#pascalCase}}{{name}}State{{/pascalCase}}>(
          builder: (context, state) {
            return const Center(
                  child: Text('{{#titleCase}}{{name}}{{/titleCase}}'),
                );
          },
        ),
      ),
    );
  }
}
