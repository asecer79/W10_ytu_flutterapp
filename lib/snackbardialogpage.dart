import 'package:flutter/material.dart';

class SnackBarDialogPage extends StatefulWidget {
  const SnackBarDialogPage({super.key});

  @override
  State<SnackBarDialogPage> createState() => _SnackBarDialogPageState();
}

class _SnackBarDialogPageState extends State<SnackBarDialogPage> {
  var resultMessage = "Result Message";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(resultMessage, style: TextStyle(fontSize: 24)),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      action: SnackBarAction(
                        label: "Yes",
                        onPressed: () {
                          setState(() {
                            resultMessage = "Save completed successfully";
                          });
                        },
                      ),
                      backgroundColor: Colors.brown,
                      content: Text("Dou you confirm?"),
                      duration: Duration(seconds: 3),
                    ),
                  );
                },
                child: Text("Save", style: TextStyle(fontSize: 35)))
          ],
        ),
      ),
    );
  }
}
