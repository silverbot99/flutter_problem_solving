// ignore_for_file: directives_ordering
// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:build_runner_core/build_runner_core.dart' as _i1;
import 'package:artemis/builder.dart' as _i2;
import 'package:slang_build_runner/slang_build_runner.dart' as _i3;
import 'package:freezed/builder.dart' as _i4;
import 'package:json_serializable/builder.dart' as _i5;
import 'package:source_gen/builder.dart' as _i6;
import 'package:auto_route_generator/builder.dart' as _i7;
import 'package:injectable_generator/builder.dart' as _i8;
import 'package:r_resources/r_resources.dart' as _i9;
import 'dart:isolate' as _i10;
import 'package:build_runner/build_runner.dart' as _i11;
import 'dart:io' as _i12;

final _builders = <_i1.BuilderApplication>[
  _i1.apply(
    r'artemis:artemis',
    [_i2.graphQLQueryBuilder],
    _i1.toDependentsOf(r'artemis'),
    hideOutput: false,
    appliesBuilders: const [r'json_serializable:json_serializable'],
  ),
  _i1.apply(
    r'slang_build_runner:slang_build_runner',
    [_i3.i18nBuilder],
    _i1.toRoot(),
    hideOutput: false,
  ),
  _i1.apply(
    r'freezed:freezed',
    [_i4.freezed],
    _i1.toDependentsOf(r'freezed'),
    hideOutput: false,
  ),
  _i1.apply(
    r'json_serializable:json_serializable',
    [_i5.jsonSerializable],
    _i1.toDependentsOf(r'json_serializable'),
    hideOutput: true,
    appliesBuilders: const [r'source_gen:combining_builder'],
  ),
  _i1.apply(
    r'source_gen:combining_builder',
    [_i6.combiningBuilder],
    _i1.toNoneByDefault(),
    hideOutput: false,
    appliesBuilders: const [r'source_gen:part_cleanup'],
  ),
  _i1.apply(
    r'auto_route_generator:autoRouteGenerator',
    [_i7.autoRouteGenerator],
    _i1.toDependentsOf(r'auto_route_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'injectable_generator:injectable_builder',
    [_i8.injectableBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: true,
  ),
  _i1.apply(
    r'injectable_generator:injectable_config_builder',
    [_i8.injectableConfigBuilder],
    _i1.toDependentsOf(r'injectable_generator'),
    hideOutput: false,
  ),
  _i1.apply(
    r'r_resources:r_resources',
    [_i9.rResourcesBuilder],
    _i1.toDependentsOf(r'r_resources'),
    hideOutput: false,
  ),
  _i1.applyPostProcess(
    r'source_gen:part_cleanup',
    _i6.partCleanup,
  ),
];
void main(
  List<String> args, [
  _i10.SendPort? sendPort,
]) async {
  var result = await _i11.run(
    args,
    _builders,
  );
  sendPort?.send(result);
  _i12.exitCode = result;
}
