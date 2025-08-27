import 'package:flutter/material.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';

class CustomTextWidget extends StatefulWidget {
  const CustomTextWidget({super.key, this.label, this.prefix, this.suffix, this.validator, this.hint, this.fillColor,  this.filled, this.border});

  final String? label;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final Color? fillColor;
  final bool? filled;
  final BorderRadius? border;

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  String? errorMessage;
  String? validate(String? value) {
    String? result = widget.validator?.call(value);
    setState(() {
      errorMessage = result;
    });
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      decoration: InputDecoration(
        fillColor: widget.fillColor,
        filled: widget.filled,
        prefixIcon: widget.prefix,
        suffixIcon: errorMessage != null
            ? Tooltip(
                message: widget.label == 'Email'
                    ? "Email must contain:\n"
                          "- A valid username (letters, numbers, or allowed symbols)\n"
                          "- The '@' symbol\n"
                          "- A domain name (e.g., gmail, yahoo)\n"
                          "- A valid extension (e.g., .com, .org, .net)"
                    : "Username must follow these rules:\n"
                          "- Only letters and numbers are allowed\n"
                          "- Can include '.' or '_' but not at the beginning or end\n"
                          "- '.' or '_' cannot appear next to each other\n"
                          "- Length must be between 8 and 20 characters",
                child: Icon(Icons.info_outline, color: Colors.red),
              )
            : null,
        labelText: widget.label,
        hintText: widget.hint,
        labelStyle: AppTextStyle.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: widget.border ?? BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.PrimaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: widget.border ?? BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.PrimaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: widget.border ?? BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: widget.border ?? BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
