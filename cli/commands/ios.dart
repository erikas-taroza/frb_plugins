import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:path/path.dart';
import 'package:process_run/process_run.dart';
import '../mixins/config.dart';

class IOSBuildCommand extends Command with BuildConfig {
  @override
  String get name => "ios";
  @override
  String get description => "Build the iOS libraries";

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
    final arch = [
      "aarch64-apple-ios",
      "x86_64-apple-ios",
      "aarch64-apple-ios-sim",
    ];
    await shell.run("rustup target add ${arch.join(" ")}");
    for (final target in arch) {
      await shell.run(
        "cargo build -r --target=$target --manifest=${join(projectDir, "Cargo.toml")}",
      );
    }

    final framework = "$project-$name.xcframework";
    final libname = "$project.a";
    final iosSimLipo = join(buildDir, "ios-sim-lipo", libname);

    await Directory(join(buildDir, "ios-sim-lipo")).create(recursive: true);

    await shell.run("""
      lipo -create -output $iosSimLipo \\
          ${join(projectDir, "target", "aarch64-apple-ios-sim", "release", libname)} \\
          ${join(projectDir, "target", "x86_64-apple-ios", "release", libname)}

      xcodebuild -create-xcframework \\
        -library $iosSimLipo \\
        -library ${join(projectDir, "target", "aarch64-apple-ios", "release", libname)} \\
        -output $framework

      zip -r $framework.zip $framework
      rm -rf ios-sim-lipo $framework
    """);
  }
}