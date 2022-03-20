{{> common_header.md }}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/{{#snakeCase}}{{name}}_cubit{{/snakeCase}}.dart';

{{#repositories}}import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/domain/repositories/{{#snakeCase}}{{repository}} repository{{/snakeCase}}.dart';
{{/repositories}}

class {{#pascalCase}}{{name}}Page{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}Page{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{#titleCase}}{{name}}{{/titleCase}}')),
      body: BlocProvider<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}>(
        create: (context) => {{#pascalCase}}{{name}}Cubit{{/pascalCase}}({{#repositories}}{{#pascalCase}}{{repository}} repository{{/pascalCase}}(),{{/repositories}}),
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
