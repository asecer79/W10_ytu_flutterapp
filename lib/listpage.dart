import 'package:flutter/material.dart';
import 'package:flutter_application_2/student.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  var cities = ["ankara", "istanbul", "adana"];

  List<Student> students = [
    Student(id: 1, firstName: "Ali", lastName: "Kara"),
    Student(id: 2, firstName: "ayşe", lastName: "kızıl"),
    Student(id: 3, firstName: "fahriye", lastName: "beyaz"),
    Student(id: 4, firstName: "cevriye", lastName: "al"),
    Student(id: 5, firstName: "zahide", lastName: "beyaz"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List views")),
      body: Container(
        child: Padding(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(15),
              itemCount: students.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.all(10),
                    height: 25,
                    width: 100,
                    color: Colors.amber,
                    child: Text(
                        "${students[index].id}. ${students[index].firstName} ${students[index].lastName}"));
              },
            ),
            padding: EdgeInsets.all(25)),
      ),
    );
  }

  ListView getFixedList() {
    return ListView(
      //fixed list
      children: [
        Text("This is a text1"),
        Text("This is a text2"),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Buy")),
            Text("Computer")
          ],
        )
      ],
    );
  }
}
