// ignore_for_file: public_member_api_docs

import 'dart:math';

String generateRandomHexColor() {
  final Random random = Random();

  final int randomNumber = random.nextInt(0xFFFFFF);

  final String hexColor = randomNumber.toRadixString(16).padLeft(6, '0');

  return '#$hexColor';
}

int convertHexColorToInt(String hexColor) {
  return hexColor.contains('#')
      ? int.parse(hexColor.replaceFirst('#', '0xFF'))
      : -1;
}
