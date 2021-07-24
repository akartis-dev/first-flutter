import 'package:flutter/material.dart';

class FormSectionWidget extends StatelessWidget {
  const FormSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
          decoration: InputDecoration(
        fillColor: Colors.blueGrey[50],
        filled: true,
        prefixIcon: const Icon(Icons.search),
        hintText: "Recherche",
        contentPadding: const EdgeInsets.all(10),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey[100]!, width: 1.0),
            borderRadius: BorderRadius.circular(25)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueGrey, width: 1.0),
            borderRadius: BorderRadius.circular(25)),
      )),
    );
  }
}
