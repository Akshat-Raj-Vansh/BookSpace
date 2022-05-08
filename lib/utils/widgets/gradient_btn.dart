import 'package:bookspace/utils/gradients.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final Function onTap;
  const GradientButton({Key? key, required this.onTap, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          gradient: rprimaryGradient,
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: child,
      ),
    );
  }
}
