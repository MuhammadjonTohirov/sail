import 'dart:async';
import 'package:flutter/material.dart';
import '../../presentation/widgets/toast/toast_widget.dart';
import '../router/app_router.dart';

class ToastManager {
  static final ToastManager _instance = ToastManager._internal();
  factory ToastManager() => _instance;
  ToastManager._internal();

  OverlayEntry? _overlayEntry;
  Timer? _timer;

  void show({
    required String message,
    ToastType type = ToastType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    _timer?.cancel();
    _overlayEntry?.remove();
    _overlayEntry = null;

    final overlayState = rootNavigatorKey.currentState?.overlay;
    if (overlayState == null) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => ToastWidget(
        message: message,
        type: type,
        onDismiss: hide,
      ),
    );

    overlayState.insert(_overlayEntry!);

    _timer = Timer(duration, () {
      hide();
    });
  }

  void hide() {
    _timer?.cancel();
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
