import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  const PopupMenuPage({super.key});

  @override
  State<PopupMenuPage> createState() => _PopupMenuPageState();
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup menu"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Data1"),
                  PopupMenuButton(
                    icon: Icon(Icons.settings),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(onTap: () {}, child: Text("Delete")),
                        PopupMenuItem(child: Text("Send email"))
                      ];
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Data2"),
                  PopupMenuButton(
                    icon: Icon(Icons.settings),
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(onTap: () {}, child: Text("Delete")),
                        PopupMenuItem(child: Text("Send email"))
                      ];
                    },
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
