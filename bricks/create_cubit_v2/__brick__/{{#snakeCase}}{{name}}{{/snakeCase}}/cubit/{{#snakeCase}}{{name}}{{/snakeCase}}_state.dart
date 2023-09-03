{{> common_header.md }}

part of '{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';

@immutable
sealed class {{#pascalCase}}{{name}}State{{/pascalCase}} {}

final class InitialState extends {{#pascalCase}}{{name}}State{{/pascalCase}} {}

final class LoadingState extends {{#pascalCase}}{{name}}State{{/pascalCase}} {}

final class DoneState extends {{#pascalCase}}{{name}}State{{/pascalCase}} {}

final class ErrorState extends {{#pascalCase}}{{name}}State{{/pascalCase}} {
  final String errorMsg;

  ErrorState(this.errorMsg);
}
