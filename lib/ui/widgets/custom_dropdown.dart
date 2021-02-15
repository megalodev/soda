import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final List<String> items;
  final Function(dynamic) onChanged;

  const CustomDropDown({
    Key key,
    this.items,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String item;
    return Container(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 16.0, right: 20.0, top: 2.0, bottom: 2.0),
          border: _inputBorder(),
          focusedBorder: _inputBorder(),
          enabledBorder: _inputBorder(),
          disabledBorder: _inputBorder(),
          errorBorder: _inputBorder(
            color: Colors.red,
          ),
        ),
        value: item ?? items[0],
        onSaved: (value) {
          item = value;
        },
        onChanged: onChanged,
        items: items
            .map(
              (e) => DropdownMenuItem(
                child: Text('$e'),
                value: e,
              ),
            )
            .toList(),
      ),
    );
  }

  _inputBorder({Color color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        gapPadding: 20,
        borderSide: BorderSide(
          color: color ?? Colors.grey[200],
          style: BorderStyle.solid,
          width: 3.0,
        ),
      );
}
