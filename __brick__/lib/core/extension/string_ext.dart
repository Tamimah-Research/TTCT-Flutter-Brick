extension StringExtension on String {
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  bool get isNullOrEmpty => isEmpty || trim().isEmpty;
}
