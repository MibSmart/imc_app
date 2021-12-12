import 'package:flutter/material.dart';
import 'package:imc_app/app/model/constants.dart';

class InputTexts extends StatelessWidget {
  final String label;
  final String hint;
  const InputTexts({
    Key? key,
    required this.label,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(height: 13),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: kHintTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFF949B9C),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
