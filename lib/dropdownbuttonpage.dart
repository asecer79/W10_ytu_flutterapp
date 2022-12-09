import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  const DropDownButtonPage({super.key});

  @override
  State<DropDownButtonPage> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
  var colorTexts = ["red", "green", "blue"];
  var selectedColorText = "red";
  var color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedColorText,
              items: colorTexts.map<DropdownMenuItem<String>>((selectedItem) {
                return DropdownMenuItem<String>(
                  value: selectedItem,
                  child: Text(
                    selectedItem,
                    style: TextStyle(fontSize: 24),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedColorText = value!;
                  if (selectedColorText == "red") {
                    color = Colors.red;
                  }
                  if (selectedColorText == "green") {
                    color = Colors.green;
                  }
                  if (selectedColorText == "blue") {
                    color = Colors.blue;
                  }
                });
              },
            ),
            Container(
              color: color,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}
