part of '{{#snakeCase}}{{{name}}}{{/snakeCase}}_bloc.dart';

abstract class {{#pascalCase}}{{{name}}}{{/pascalCase}}State extends Equatable {
  const {{#pascalCase}}{{{name}}}{{/pascalCase}}State();

  @visibleForTesting
  factory {{#pascalCase}}{{{name}}}{{/pascalCase}}State.ready() => const _Ready();

  @visibleForTesting
  const factory {{#pascalCase}}{{{name}}}{{/pascalCase}}State.loading() = _Loading;

  @visibleForTesting
  const factory {{#pascalCase}}{{{name}}}{{/pascalCase}}State.error(String message) = _Error;

  bool get isReady => this is _Ready;
  bool get isLoading => this is _Loading;
  bool get isError => this is _Error;

  _Ready get asReady => this as _Ready;
  _Loading get asLoading => this as _Loading;
  _Error get asError => this as _Error;
}
{{#json}}
@JsonSerializable()
{{/json}}
class _Ready extends {{#pascalCase}}{{{name}}}{{/pascalCase}}State {
  const _Ready();
{{#json}}
  factory _Ready.fromJson(Map<String, dynamic> json) => _$ReadyFromJson(json);

  Map<String, dynamic> toJson() => _$ReadyToJson(this);
{{/json}}
  @override
  List<Object> get props => [];
}

class _Loading extends {{#pascalCase}}{{{name}}}{{/pascalCase}}State {
  const _Loading();

  @override
  List<Object> get props => [];
}

class _Error extends {{#pascalCase}}{{{name}}}{{/pascalCase}}State {
  const _Error(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}
