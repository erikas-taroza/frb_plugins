// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.1.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/api.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'internal/config.dart';
import 'internal/metadata.dart';
import 'internal/playback_status.dart';
import 'internal/timeline.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_SmtcInternalPtr =>
          wire.rust_arc_decrement_strong_count_RustOpaque_SMTCInternal;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  SmtcInternal dco_decode_RustOpaque_SMTCInternal(dynamic raw);

  @protected
  RustStreamSink<String> dco_decode_StreamSink_String_Sse(dynamic raw);

  @protected
  RustStreamSink<bool> dco_decode_StreamSink_bool_Sse(dynamic raw);

  @protected
  RustStreamSink<PlatformInt64> dco_decode_StreamSink_i_64_Sse(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  bool dco_decode_box_autoadd_bool(dynamic raw);

  @protected
  PlatformInt64 dco_decode_box_autoadd_i_64(dynamic raw);

  @protected
  MusicMetadata dco_decode_box_autoadd_music_metadata(dynamic raw);

  @protected
  PlaybackTimeline dco_decode_box_autoadd_playback_timeline(dynamic raw);

  @protected
  SMTCConfig dco_decode_box_autoadd_smtc_config(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  PlatformInt64 dco_decode_i_64(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  MusicMetadata dco_decode_music_metadata(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  bool? dco_decode_opt_box_autoadd_bool(dynamic raw);

  @protected
  PlatformInt64? dco_decode_opt_box_autoadd_i_64(dynamic raw);

  @protected
  PlaybackStatus dco_decode_playback_status(dynamic raw);

  @protected
  PlaybackTimeline dco_decode_playback_timeline(dynamic raw);

  @protected
  SMTCConfig dco_decode_smtc_config(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  SmtcInternal sse_decode_RustOpaque_SMTCInternal(SseDeserializer deserializer);

  @protected
  RustStreamSink<String> sse_decode_StreamSink_String_Sse(
      SseDeserializer deserializer);

  @protected
  RustStreamSink<bool> sse_decode_StreamSink_bool_Sse(
      SseDeserializer deserializer);

  @protected
  RustStreamSink<PlatformInt64> sse_decode_StreamSink_i_64_Sse(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  bool sse_decode_box_autoadd_bool(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_box_autoadd_i_64(SseDeserializer deserializer);

  @protected
  MusicMetadata sse_decode_box_autoadd_music_metadata(
      SseDeserializer deserializer);

  @protected
  PlaybackTimeline sse_decode_box_autoadd_playback_timeline(
      SseDeserializer deserializer);

  @protected
  SMTCConfig sse_decode_box_autoadd_smtc_config(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_i_64(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  MusicMetadata sse_decode_music_metadata(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  bool? sse_decode_opt_box_autoadd_bool(SseDeserializer deserializer);

  @protected
  PlatformInt64? sse_decode_opt_box_autoadd_i_64(SseDeserializer deserializer);

  @protected
  PlaybackStatus sse_decode_playback_status(SseDeserializer deserializer);

  @protected
  PlaybackTimeline sse_decode_playback_timeline(SseDeserializer deserializer);

  @protected
  SMTCConfig sse_decode_smtc_config(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void sse_encode_RustOpaque_SMTCInternal(
      SmtcInternal self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_String_Sse(
      RustStreamSink<String> self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_bool_Sse(
      RustStreamSink<bool> self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_i_64_Sse(
      RustStreamSink<PlatformInt64> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_i_64(
      PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_music_metadata(
      MusicMetadata self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_playback_timeline(
      PlaybackTimeline self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_smtc_config(
      SMTCConfig self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_music_metadata(MusicMetadata self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_bool(bool? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_i_64(
      PlatformInt64? self, SseSerializer serializer);

  @protected
  void sse_encode_playback_status(
      PlaybackStatus self, SseSerializer serializer);

  @protected
  void sse_encode_playback_timeline(
      PlaybackTimeline self, SseSerializer serializer);

  @protected
  void sse_encode_smtc_config(SMTCConfig self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void rust_arc_increment_strong_count_RustOpaque_SMTCInternal(int ptr) =>
      wasmModule.rust_arc_increment_strong_count_RustOpaque_SMTCInternal(ptr);

  void rust_arc_decrement_strong_count_RustOpaque_SMTCInternal(int ptr) =>
      wasmModule.rust_arc_decrement_strong_count_RustOpaque_SMTCInternal(ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {
  external void rust_arc_increment_strong_count_RustOpaque_SMTCInternal(
      int ptr);

  external void rust_arc_decrement_strong_count_RustOpaque_SMTCInternal(
      int ptr);
}
