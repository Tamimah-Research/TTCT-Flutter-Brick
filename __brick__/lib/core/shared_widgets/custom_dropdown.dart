import 'package:flutter/material.dart';
///
class {{#pascalCase}}{{project_name}}{{/pascalCase}}DropdownButton<T> extends StatelessWidget {
///
  const {{#pascalCase}}{{project_name}}{{/pascalCase}}DropdownButton({
    super.key,
    required this.fieldName,
    required this.value,
    required this.items,
    required this.onChanged,
    required this.itemBuilder,
  });
  ///
  final String fieldName;
  ///
  final T? value;
  ///
  final List<T> items;
  ///
  final void Function(T?)? onChanged;
  ///
  final Widget Function(T) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, bottom: 8),
      child: DropdownButtonFormField<T>(
        isExpanded: true,
        style: const TextStyle(fontSize: 14, color: Colors.black),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          constraints: const BoxConstraints.expand(height: 48),
          labelText: fieldName,
          labelStyle: TextStyle(color: Colors.black.withOpacity(0.4)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.blue.withOpacity(0.5),
              ),),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black.withOpacity(.2),
              ),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        items: items.isEmpty ? null:items.map<DropdownMenuItem<T>>((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: itemBuilder(item),
          );
        }).toList(),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
