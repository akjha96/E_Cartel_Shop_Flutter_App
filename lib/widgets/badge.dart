import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color? color;

  const Badge({
    Key? key,
    required this.child,
    this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: 5,
          right: 5,
          child: Container(
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: color ?? Theme.of(context).colorScheme.secondary,
              ),
              constraints: const BoxConstraints(
                minHeight: 16,
                minWidth: 16,
              ),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 10,
                ),
              )),
        ),
      ],
    );
  }
}
