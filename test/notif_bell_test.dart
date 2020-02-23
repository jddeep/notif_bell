import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notif_bell/notif_bell.dart';

void main() {
  const MethodChannel channel = MethodChannel('notif_bell');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NotifBell.platformVersion, '42');
  });
}
