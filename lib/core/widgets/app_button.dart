import 'package:flutter/material.dart';

class ReactiveButton extends StatelessWidget {
  final bool isActive;
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;

  const ReactiveButton({
    super.key,
    required this.isActive,
    required this.label,
    this.onPressed,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onPressed : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isActive
              ? Colors
                    .red // أحمر كامل عند وجود كتابة
              : Colors.red.withOpacity(0.3), // أحمر شفاف
          borderRadius: BorderRadius.circular(12),
        ),
        child: isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
