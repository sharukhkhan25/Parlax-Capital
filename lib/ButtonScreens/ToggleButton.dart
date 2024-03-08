import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({Key? key}) : super(key: key);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      activeColor: Colors.green,
      inactiveColor: Colors.blue,
      value: selected,
      onToggle: (bool value) {
        setState(
          () {
            selected = true;
          },
        );
      },
    );
  }
}
