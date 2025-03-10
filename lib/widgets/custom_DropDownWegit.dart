import 'package:flutter/material.dart';

class custom_DropDownWidgits extends StatelessWidget {
  List<String> item;
  double width;

  custom_DropDownWidgits({required this.item, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: DropdownButton(
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        underline: Container(),
        style: TextStyle(color: Colors.white),
        value: item.first,
        items:
            item.map((String s) {
              return DropdownMenuItem(child: Text(s), value: s);
            }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
