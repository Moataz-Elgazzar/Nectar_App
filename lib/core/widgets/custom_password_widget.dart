import 'package:flutter/material.dart';
import 'package:nectar/core/text/textstyle.dart';
import 'package:nectar/core/util/color.dart';

class CustomPasswordWidget extends StatefulWidget {
  const CustomPasswordWidget({super.key, this.label, this.prefix, this.suffix, this.validator});

  final String? label;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordWidget> createState() => _CustomPasswordWidgetState();
}

class _CustomPasswordWidgetState extends State<CustomPasswordWidget> {
  
  bool obsecuretext = true;
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
      obscureText: obsecuretext,
      decoration: InputDecoration(
        prefixIcon: widget.prefix,
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  obsecuretext = !obsecuretext;
                });
              },
              icon: Icon(obsecuretext ? Icons.visibility_off : Icons.visibility),
            ),
            if (errorMessage != null)
              Tooltip(
                message:
                    "Password must contain:\n"
                    "- At least 8 characters\n"
                    "- One uppercase letter (A-Z)\n"
                    "- One lowercase letter (a-z)\n"
                    "- One number (0-9)\n"
                    "- One special character (!@#\$&*~)",
                child: Icon(Icons.info_outline, color: Colors.red),
              ),
          ],
        ),
        labelText: widget.label,
        labelStyle: AppTextStyle.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.PrimaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.PrimaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
