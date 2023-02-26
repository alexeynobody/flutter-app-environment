import 'package:example/app.dart';
import 'package:example/models/environment_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_environment/environment.dart';

Future<void> main() async {
  // Initializing the environment from the entrypoint file.
  await Environment.init<EnvironmentConfig>(
    environmentType: EnvironmentType.development,
    config: const EnvironmentConfig(
      title: 'Test evironment title',
      initialCounter: 0,
    ),
  );

  runApp(const App());
}
