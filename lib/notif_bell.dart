import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class NotifBell extends StatefulWidget {
  static const MethodChannel _channel = const MethodChannel('notif_bell');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  final bool notify;
  final double size;
  final int notifs;
  final Function onTap;

  NotifBell({
    @required this.notify,
    @required this.size,
    this.notifs,
    this.onTap,
  });

  @override
  _NotifBellState createState() => _NotifBellState();
}

class _NotifBellState extends State<NotifBell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => widget.onTap,
        child: Stack(
          children: <Widget>[
            Icon(
              Icons.notifications,
              color: Colors.white,
              size: widget.size,
            ),
            widget.notify
                ? Positioned(
                    left: widget.size / 6,
                    top: widget.size / 6,
                    child: Container(
                      height: widget.size / 3.5,
                      width: widget.size / 3.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(360.0),
                          color: Colors.amber),
                      child: Center(
                          child: Text(
                        widget.notifs?.toString(),
                        style: TextStyle(
                            color: Colors.white, fontSize: widget.size / 4.5),
                      )),
                    ))
                : Container(
                    height: 0.0,
                  )
          ],
        ));
  }
}
