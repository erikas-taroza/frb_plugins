import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';
import '../mixins/config.dart';

class LinuxBuildCommand extends Command with BuildConfig {
  @override
  String get name => "linux";
  @override
  String get description => "Build the linux libraries";

  @override
  FutureOr? run() async {
    final project = argResults?.option("project");

    final projectDir = join(cwd, "packages", project);

    if (!await Directory(projectDir).exists()) {
      stderr.writeln("Project $project not found");
      return;
    }
    await ensureBuildDirectoryExists(project!);

    final shell = Shell(workingDirectory: buildDir);

    await shell.run("cargo install cargo-zigbuild");

    final libname = "lib$project.so";

    final targets = [
      ("aarch64-unknown-linux-gnu", "linux-arm64"),
      ("x86_64-unknown-linux-gnu", "linux-x64")
    ];
    for (final (target, arch) in targets) {
      final archDir = Directory(join(buildDir, arch))..create(recursive: true);
      await shell.run("""
        rustup target add $target
        cargo zigbuild --target=$target -r --manifest=${join(projectDir, "Cargo.toml")}
        cp ${join(projectDir, "target", target, "release", libname)} ${archDir.path}
      """);
    }

    await shell.run("""
      tar -czvf linux.tar.gz linux-*
      rm -rf linux-*
    """);
  }
}