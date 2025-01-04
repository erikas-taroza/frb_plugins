// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../internal/config.dart';
import '../internal/metadata.dart';
import '../internal/playback_status.dart';
import '../internal/timeline.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

SmtcInternal smtcNew({bool? enabled}) =>
    RustLib.instance.api.crateApiApiSmtcNew(enabled: enabled);

Future<void> smtcUpdateConfig(
        {required SmtcInternal internal, required SMTCConfig config}) =>
    RustLib.instance.api
        .crateApiApiSmtcUpdateConfig(internal: internal, config: config);

Future<void> smtcUpdateMetadata(
        {required SmtcInternal internal, required MusicMetadata metadata}) =>
    RustLib.instance.api
        .crateApiApiSmtcUpdateMetadata(internal: internal, metadata: metadata);

Future<void> smtcClearMetadata({required SmtcInternal internal}) =>
    RustLib.instance.api.crateApiApiSmtcClearMetadata(internal: internal);

Future<void> smtcUpdateTimeline(
        {required SmtcInternal internal, required PlaybackTimeline timeline}) =>
    RustLib.instance.api
        .crateApiApiSmtcUpdateTimeline(internal: internal, timeline: timeline);

Future<void> smtcUpdatePlaybackStatus(
        {required SmtcInternal internal, required PlaybackStatus status}) =>
    RustLib.instance.api.crateApiApiSmtcUpdatePlaybackStatus(
        internal: internal, status: status);

Future<void> smtcUpdateShuffle(
        {required SmtcInternal internal, required bool shuffle}) =>
    RustLib.instance.api
        .crateApiApiSmtcUpdateShuffle(internal: internal, shuffle: shuffle);

Future<void> smtcUpdateRepeatMode(
        {required SmtcInternal internal, required String repeatMode}) =>
    RustLib.instance.api.crateApiApiSmtcUpdateRepeatMode(
        internal: internal, repeatMode: repeatMode);

Future<void> smtcEnableSmtc({required SmtcInternal internal}) =>
    RustLib.instance.api.crateApiApiSmtcEnableSmtc(internal: internal);

Future<void> smtcDisableSmtc({required SmtcInternal internal}) =>
    RustLib.instance.api.crateApiApiSmtcDisableSmtc(internal: internal);

Stream<String> smtcButtonPressEvent({required SmtcInternal internal}) =>
    RustLib.instance.api.crateApiApiSmtcButtonPressEvent(internal: internal);

Stream<PlatformInt64> smtcPositionChangeRequestEvent(
        {required SmtcInternal internal}) =>
    RustLib.instance.api
        .crateApiApiSmtcPositionChangeRequestEvent(internal: internal);

Stream<bool> smtcShuffleRequestEvent({required SmtcInternal internal}) =>
    RustLib.instance.api.crateApiApiSmtcShuffleRequestEvent(internal: internal);

Stream<String> smtcRepeatModeRequestEvent({required SmtcInternal internal}) =>
    RustLib.instance.api
        .crateApiApiSmtcRepeatModeRequestEvent(internal: internal);

// Rust type: RustOpaqueMoi<SMTCInternal>
abstract class SmtcInternal implements RustOpaqueInterface {}
