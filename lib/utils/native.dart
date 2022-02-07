import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _channel = MethodChannel('jp.co.orderApp/common');

Future<String> _nativeSentJsonData() async {
  String jsonData;

  try {
    final String result = await _channel.invokeMethod('nativeSentJsonData(');
    jsonData = '$result';
  } on PlatformException catch (e) {
    jsonData = '${e.message}';
  }

  return jsonData;
}
