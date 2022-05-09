{{> common_header.md }}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/core/enums.dart';
import '../../app/core/injection_container.dart';
import 'cubit/add_action_cubit.dart';

// import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/features/{{#snakeCase}}{{name}}{{/snakeCase}}/cubit/{{#snakeCase}}{{name}}_cubit{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}}Page{{/pascalCase}} extends StatelessWidget {
  const {{#pascalCase}}{{name}}Page{{/pascalCase}}({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('{{#titleCase}}{{name}}{{/titleCase}}')),
      body: BlocProvider<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}>(
        create: (context) => getIt(),
        child: BlocConsumer<{{#pascalCase}}{{name}}Cubit{{/pascalCase}}, {{#pascalCase}}{{name}}State{{/pascalCase}}>(
          listener: (context, state) {
            final errorMsg = state.errorMessage;
            if (errorMsg != null && state.status == Status.error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(errorMsg),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
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
