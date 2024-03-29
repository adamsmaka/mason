{{> common_header.md }}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/data/repositories/repositories.dart';

part '{{#snakeCase}}{{name}} state{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}}Cubit{{/pascalCase}} extends Cubit<{{#pascalCase}}{{name}}State{{/pascalCase}}> {
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
    {{#repositories}}this._{{#camelCase}}{{repository}} repository{{/camelCase}},
    required this.userId,
  {{/repositories}}) : super(InitialState());

  {{#repositories}}final {{#pascalCase}}{{repository}} repository{{/pascalCase}} _{{#camelCase}}{{repository}} repository{{/camelCase}};
  {{/repositories}}
  final String userId;

  Future<void> doSomething() async {
    emit(LoadingState());
    try {
      //await repository 
      // final progressModels = await progressRepository.getProgressEntriesByUserId(userId);
      emit(LoadedState());
    } catch (exception) {
      emit(
        ErrorState('$exception'),
      );
    }
  }
}
