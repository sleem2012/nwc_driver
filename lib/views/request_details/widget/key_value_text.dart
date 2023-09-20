import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../../shared/theme/text_theme.dart';

class KeyValueText extends StatelessWidget {
  const KeyValueText(
      {super.key, required this.keyText, required this.value, this.valueStyle});

  final String keyText;
  final String value;
  final TextStyle? valueStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyText,
          style: KTextStyle.of(context).primary,
        ),
        10.w,
        Text(
          value,
          style: valueStyle,
        )
      ],
    );
  }
}
