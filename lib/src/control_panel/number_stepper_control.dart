import 'package:flutter/material.dart';

/// TODO
class NumberStepperControl extends StatelessWidget {
  /// TODO
  const NumberStepperControl({
    super.key,
    required this.title,
    required this.value,
    required this.onDecrementPressed,
    required this.onIncrementPressed,
  });

  /// TODO
  final Widget title;

  /// The current value.
  final num value;

  /// Executed when the increment button is pressed.
  final VoidCallback onDecrementPressed;

  /// Executed when the decrement button is pressed.
  final VoidCallback onIncrementPressed;

  String get _displayTextScale => value.toStringAsFixed(1);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        title,
        IconButton(
          onPressed: onDecrementPressed,
          icon: const Icon(Icons.remove),
        ),
        Text(
          _displayTextScale,
        ),
        IconButton(
          onPressed: onIncrementPressed,
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
