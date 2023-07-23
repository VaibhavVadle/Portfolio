import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/constants/app_color.dart';
import '../core/constants/app_sizes.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.suffixIcon,
    this.inputFormatters,
    this.onChanged,
    this.validator,
    this.maxLine = 1,
    this.readOnly = false,
    this.onTap,
    this.childPadding = Sizes.s20,
    this.textCapitalization,
    this.fillColor = AppColors.textFieldColor,
    this.filled = true,
  });

  final String? labelText;
  final String? hintText;
  final bool readOnly;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final TextCapitalization? textCapitalization;
  final bool obscureText;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final int maxLine;
  final VoidCallback? onTap;
  final double childPadding;
  final Color fillColor;
  final bool filled;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          Text(
            widget.labelText!,
            style: TextStyle(
              color: AppColors.white,
              fontSize: Sizes.s14.sp,
            ),
          ),
          SizedBox(height: Sizes.s10.h)
        ],
        TextFormField(
          autocorrect: false,
          style: TextStyle(
            fontSize: Sizes.s15.sp,
            color: AppColors.white,
          ),
          textCapitalization:
              widget.textCapitalization ?? TextCapitalization.none,
          maxLines: widget.maxLine,
          onTap: widget.onTap,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscuringCharacter: '*',
          onChanged: widget.onChanged,
          validator: widget.validator,
          readOnly: widget.readOnly,
          cursorColor: AppColors.secondary.withOpacity(0.5),
          obscureText: widget.obscureText,
          inputFormatters: widget.inputFormatters,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            filled: widget.filled,
            fillColor: widget.fillColor,
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: AppColors.grey700,
              fontSize: Sizes.s15.sp,
              fontWeight: FontWeight.w600,
            ),
            errorStyle: TextStyle(
              fontSize: Sizes.s15.sp,
              color: Colors.red,
              fontWeight: FontWeight.w600,
            ),
            enabledBorder: _outlineInputBorder(Colors.grey),
            focusedBorder: _outlineInputBorder(
              AppColors.secondary.withOpacity(0.5),
            ),
            errorBorder: _outlineInputBorder(Colors.red),
            focusedErrorBorder: _outlineInputBorder(Colors.red),
            suffixIcon: widget.suffixIcon,
          ),
        ),
      ],
    );
  }
}

OutlineInputBorder _outlineInputBorder(Color color) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(Sizes.s10.r),
    borderSide: BorderSide(
      width: Sizes.shalf,
      color: color,
    ),
  );
}
