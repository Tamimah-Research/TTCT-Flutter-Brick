import 'package:flutter/material.dart';

///
class {{#pascalCase}}{{project_name}}{{/pascalCase}}Dialog extends StatelessWidget {
  ///
  const {{#pascalCase}}{{project_name}}{{/pascalCase}}Dialog({
    super.key,
    required this.errorMsg,
    this.isSingleAction = false,
    required this.okay,
    required this.cancel,
    required this.okayText,
    required this.cancelText,
    required this.header,
  });

  /// Description
  final String errorMsg;

  /// when okay button pressed
  final VoidCallback okay;

  /// when cancel button pressed
  final VoidCallback cancel;

  /// okay button text
  final String okayText;

  /// cancel button text
  final String cancelText;

  /// heading
  final String header;

  /// only single action button need set this true
  final bool isSingleAction;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: isSingleAction
          ? singleDialogContent(context, errorMsg)
          : dialogContent(context, errorMsg),
    );
  }

  ///
  Widget dialogContent(BuildContext context, String errorMsg) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          Text(
            header,
            style: TextStyle(
              color: Colors.black.withOpacity(.8),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          SelectableText(
            errorMsg,
            style: TextStyle(color: Colors.black.withOpacity(.8), fontSize: 14,
                fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: cancel.call,
                child: Text(cancelText),
              ),
              TextButton(
                onPressed: okay.call,
                child: Text(
                  okayText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  ///
  Widget singleDialogContent(BuildContext context, String errorMsg) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // To make the card compact
        children: <Widget>[
          Text(header, style: TextStyle(color: Colors.black.withOpacity(.8),
              fontSize: 22, fontWeight: FontWeight.bold,),),
          const SizedBox(height: 16),
          SelectableText(
            errorMsg,
            style: TextStyle(color: Colors.black.withOpacity(.8), fontSize: 14,
                fontWeight: FontWeight.bold,),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: okay.call,
                child: Text(
                  okayText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
