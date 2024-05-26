import 'package:flutter/material.dart';

///
class {{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialog<T> extends StatefulWidget {

  ///
  const {{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialog({
    super.key,
    required this.items,
    required this.itemBuilder,
    required this.searchPredicate,
    this.searchHint = 'Search',
  });
  
  ///
  final List<T> items;
  /// Callback to build list items
  final Widget Function(T item) itemBuilder; 
  /// Callback to filter items based on search query
  final bool Function(T item, String query) searchPredicate; 
  ///
  final String searchHint;

  @override
  State<{{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialog<T>> createState() => _{{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialogState<T>();
}

class _{{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialogState<T> extends State<{{#pascalCase}}{{project_name}}{{/pascalCase}}SearchDialog<T>> {
  final TextEditingController _controller = TextEditingController();
  List<T> _filteredItems = [];

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _filterSearchResults(String query) {
    if (query.isEmpty) {
      _filteredItems = widget.items;
    } else {
      _filteredItems = widget.items.where((item) 
      => widget.searchPredicate(item, query),).toList();
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              onChanged: _filterSearchResults,
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.searchHint,
                hintStyle: const TextStyle( color: Colors.grey),
                prefixIcon: const Icon(Icons.search),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.maxFinite,
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _filteredItems.length,
                itemBuilder: (context, index) {
                  return widget.itemBuilder(_filteredItems[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
