import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  var resultMessage = "Message";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LertDialog")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(resultMessage),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.red),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Delete confirmation?"),
                    content: Text("Are you sure?"),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              resultMessage = "Cancelled Deletion..";
                              Navigator.pop(context);
                            });
                          },
                          child: Text("No")),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              resultMessage = "record deleted!";
                              Navigator.pop(context);
                            });
                          },
                          child: Text("Yes"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.red)))
                    ],
                  );
                },
              );
            },
            child: Text("Delete"),
          )
        ],
      )),
    );
  }
}
