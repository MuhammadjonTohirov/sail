import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SailTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? label;
  final String? hintText;
  final String? helperText;
  final String? Function(String?)? validator;
  final bool isPassword;
  final bool enabled;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final int? maxLength;
  final int? maxLines;
  final List<TextInputFormatter>? inputFormatters;

  const SailTextField({
    super.key,
    this.controller,
    this.label,
    this.hintText,
    this.helperText,
    this.validator,
    this.isPassword = false,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLength,
    this.maxLines,
    this.inputFormatters,
  });

  @override
  State<SailTextField> createState() => _SailTextFieldState();
}

class _SailTextFieldState extends State<SailTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextFormField(
          controller: widget.controller,
          obscureText: widget.isPassword && _obscureText,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          onFieldSubmitted: widget.onFieldSubmitted,
          validator: widget.validator,
          enabled: widget.enabled,
          maxLines: widget.isPassword ? 1 : (widget.maxLines ?? 1),
          maxLength: widget.maxLength,
          inputFormatters: widget.inputFormatters,
          buildCounter: widget.maxLength != null
              ? (_, {required currentLength, required isFocused, required maxLength}) => null
              : null,
          decoration: InputDecoration(
            hintText: widget.hintText,
            helperText: widget.helperText,
            helperMaxLines: 2,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey[600],
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
