import 'package:flutter/material.dart';

class MultiLineTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const MultiLineTextFormField(
      {super.key,
        required this.hintText,
        required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: 5,
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        filled: true,
        hintText: hintText,
        border: const OutlineInputBorder(borderSide: BorderSide.none),

      ),
    );
  }
}
