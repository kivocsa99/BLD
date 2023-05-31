import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthField extends HookWidget {
  final TextEditingController? controller;
  final bool? obsecuretext;
  final String? hint;
  final TextInputType? inputType;
  final String? Function(String?)? validator;
  final Function(String)? finished;
  final FocusNode? focusNode;
  final double? width;
  const AuthField(
      {this.hint,
      this.inputType,
      this.width,
      this.finished,
      this.validator,
      this.focusNode,
      super.key,
      this.controller,
      this.obsecuretext = false});

  @override
  Widget build(BuildContext context) {
    final hidden = useState(obsecuretext);
    return Container(
      width: width,
      height: 56,
      decoration: const BoxDecoration(
          color: Color(0xffF2F2F2),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextFormField(
        focusNode: focusNode,
        onFieldSubmitted: finished,
        textAlign: TextAlign.start,
        obscureText: hidden.value!,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: obsecuretext!
              ? IconButton(
                  onPressed: () => hidden.value = !hidden.value!,
                  icon: Icon(
                    hidden.value! ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : const SizedBox.shrink(),
          border: InputBorder.none,
          focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          contentPadding:
              const EdgeInsets.only(left: 30, top: 15, bottom: 10, right: 10),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.black26,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        keyboardType: inputType,
      ),
    );
  }
}
