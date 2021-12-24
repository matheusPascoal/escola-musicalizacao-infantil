import 'package:flutter/material.dart';

class CustomColors {
  Color _activePrimaryButton = Colors.green;
  Color _activeSecondaryButton = Colors.greenAccent;

  Color getActivePrimaryButtonColor() {
    return _activePrimaryButton;
  }

  Color getActiveSecondaryButtonColor() {
    return _activeSecondaryButton;
  }
}
