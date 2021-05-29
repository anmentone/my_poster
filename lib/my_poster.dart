import 'dart:async';

import 'package:flutter/services.dart';

class MyPoster {
  static const MethodChannel _channel = const MethodChannel('my_poster');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int> makePayment(double amount, int printSettingCode) async {
    final int result = await _channel.invokeMethod(
        'makePayment', {"amount": amount, "printCode": printSettingCode});
    print("resultttttttt $result");
    return result;
  }

  static Future<int> refund(double amount, int printSettingCode) async {
    final int result = await _channel.invokeMethod(
        'refund', {"amount": amount, "printCode": printSettingCode});
    print("resultttttttt $result");
    return result;
  }
}
