String capitalize(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}

String clearStrip(String text) {
  return text.replaceAll('-', ' ');
}
