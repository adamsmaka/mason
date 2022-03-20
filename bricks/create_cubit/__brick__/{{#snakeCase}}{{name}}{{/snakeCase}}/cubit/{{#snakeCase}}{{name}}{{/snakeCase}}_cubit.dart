{{> common_header.md }}

import 'package:bloc/bloc.dart';
{{#freezed}}
import 'package:freezed_annotation/freezed_annotation.dart';
{{/freezed}}
{{^freezed}}
import 'package:meta/meta.dart';
{{/freezed}}
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/app/core/enums.dart';



{{#is_results_type_custom_model}}
import 'package:{{#snakeCase}}{{app_name}}{{/snakeCase}}/domain/models/plan_model.dart';
{{/is_results_type_custom_model}}





{{#freezed}}
part '{{#snakeCase}}{{name}} cubit{{/snakeCase}}.freezed.dart';
{{/freezed}}
part '{{#snakeCase}}{{name}} state{{/snakeCase}}.dart';

class {{#pascalCase}}{{name}} cubit{{/pascalCase}} extends Cubit<{{#pascalCase}}{{name}} state{{/pascalCase}}> {
  {{#pascalCase}}{{name}}{{/pascalCase}}Cubit(
    {{#repositories}}this._{{#camelCase}}{{repository}} repository{{/camelCase}},
  {{/repositories}}) : super(const {{#pascalCase}}{{name}} state{{/pascalCase}}());

  {{#repositories}}final {{#pascalCase}}{{repository}} repository{{/pascalCase}} _{{#camelCase}}{{repository}} repository{{/camelCase}};
  {{/repositories}}

  Future<void> start() async {
    {{#freezed}}
    emit(state.copyWith(status: Status.loading));
    {{/freezed}}
    {{^freezed}}
    emit(const {{#pascalCase}}{{name}} state{{/pascalCase}}(status: Status.loading));
    {{/freezed}}
    try {
      {{#freezed}}
      emit(state.copyWith(status: Status.success, results: [],),);
      {{/freezed}}
      {{^freezed}}
      emit(const {{#pascalCase}}{{name}} state{{/pascalCase}}(status: Status.success, results: [],),);
      {{/freezed}}
    } catch (exception) {
      {{#freezed}}
      emit(
        state.copyWith(
          status: Status.error,
          errorMessage: '$exception',
        ),
      );
      {{/freezed}}
      {{^freezed}}
      emit(
        {{#pascalCase}}{{name}} state{{/pascalCase}}(
          status: Status.error,
          errorMessage: '$exception',
        ),
      );
      {{/freezed}}
    }
  }
}


