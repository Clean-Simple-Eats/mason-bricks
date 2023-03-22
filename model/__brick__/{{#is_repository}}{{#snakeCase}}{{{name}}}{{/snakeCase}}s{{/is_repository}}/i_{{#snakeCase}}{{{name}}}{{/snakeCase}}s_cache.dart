import 'package:internal_domain/models/{{#snakeCase}}{{{name}}}{{/snakeCase}}.dart';
import 'package:internal_domain/models/request_result.dart';

abstract class I{{#pascalCase}}{{{name}}}{{/pascalCase}}sCache {
  const I{{#pascalCase}}{{{name}}}{{/pascalCase}}sCache();

  Future<RequestResult<List<{{#pascalCase}}{{{name}}}{{/pascalCase}}>>> all();

  Future<RequestResult<{{#pascalCase}}{{{name}}}{{/pascalCase}}>> byId(String id);

  Future<RequestResult<void>> delete(String id);

  Future<RequestResult<void>> deleteAll([Set<String>? ids]);

  Future<RequestResult<void>> save({{#pascalCase}}{{{name}}}{{/pascalCase}} {{#camelCase}}{{{name}}}{{/camelCase}});

  Future<RequestResult<void>> saveAll(List<{{#pascalCase}}{{{name}}}{{/pascalCase}}> {{#camelCase}}{{{name}}}{{/camelCase}}s);

  Future<Stream<StreamResult<{{#pascalCase}}{{{name}}}{{/pascalCase}}>>> watchAll();

  Future<Stream<StreamResult<{{#pascalCase}}{{{name}}}{{/pascalCase}}>>> watchById(String id);
}
