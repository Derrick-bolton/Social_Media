import 'package:flutter/material.dart';


class Webview extends StatefulWidget {
  const Webview({Key? key}) : super(key: key);

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(""),
        actions: [
          ElevatedButton(
              onPressed: (){},
              child: Text(""),
          )
        ],
      ),
      body: SafeArea(
          child: Container(

            child: Center(
                child: Text("WEb")
            ),
          )
      ),
    );
  }
}
