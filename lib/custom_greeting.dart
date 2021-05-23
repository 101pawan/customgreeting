
import 'dart:async';

import 'package:flutter/services.dart';

class CustomGreeting {
  static const MethodChannel _channel =
      const MethodChannel('custom_greeting');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get defaultGreeting async {
    final String? version = await _channel.invokeMethod('getDefaultGreeting');
    return version;
  }


}
