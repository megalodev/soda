import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final List<String> items;
  final Function(bool) onChanged;
  final bool value;

  const CustomCheckBox(
      {Key key,
      @required this.items,
      @required this.onChanged,
      @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          var item = items[i];
          var val = false;
          return CheckboxListTile(
            activeColor: Colors.blue,
            checkColor: Colors.blue,
            onChanged: onChanged,
            isThreeLine: true,
            title: Text('$item'),
            value: val,
          );
        },
      ),
    );
  }
}
