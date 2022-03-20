{{> common_header.md }}

part of '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

{{#freezed}}
@freezed
class {{#pascalCase}}{{name}} state{{/pascalCase}} with _${{#pascalCase}}{{name}} state{{/pascalCase}} {
  const factory {{#pascalCase}}{{name}} state{{/pascalCase}}({
    @Default([]) List<{{#pascalCase}}{{results_type}}{{/pascalCase}}> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _{{#pascalCase}}{{name}} state{{/pascalCase}};
}
{{/freezed}}

{{^freezed}}
@immutable
class {{#pascalCase}}{{name}} state{{/pascalCase}} {
  const {{#pascalCase}}{{name}} state{{/pascalCase}}({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<{{#pascalCase}}{{results_type}}{{/pascalCase}}> results;
  final Status status;
  final String? errorMessage;
}
{{/freezed}}
