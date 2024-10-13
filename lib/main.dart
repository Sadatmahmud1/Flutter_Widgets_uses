import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text('This our Dummy app'),
          ),
          backgroundColor: Colors.purple.shade100),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shadowColor: Colors.blue,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(color: Colors.pink.shade50, width: 4))),
            onPressed: () {
              showDialog(
                  barrierColor: Colors.pinkAccent.withOpacity(0.5),
                  barrierDismissible: true,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('DELETE'),
                      content: Text('This is a worning are you sure ?'),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('No')),
                        TextButton(onPressed: () {}, child: Text('Yes')),
                      ],
                    );
                  });
            },
            child: Text('Tap'),
          ),
          SizedBox(height: 20),
          TextButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.red, foregroundColor: Colors.white),
              onPressed: () {},
              child: Text('TapOnText')),
          SizedBox(height: 10),
          IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('DELETED'),
                      );
                    });
              },
              icon: Icon(Icons.add_call)),
          GestureDetector(
            onLongPress: () {},
            child: Column(
              children: [
                InkWell(
                  splashColor: Colors.pinkAccent,
                  onTap: () {},
                  child: Text('Deleted'),
                ),
                InkWell(onTap: () {}, child: Text('Google')),
                InkWell(onTap: () {}, child: Text('Google')),
                InkWell(onTap: () {}, child: Text('Google')),
              ],
            ),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          mouseCursor: SystemMouseCursors.click,
          autofocus: true,
          hoverColor: Colors.pinkAccent,
          onPressed: () {},
          child: Icon(Icons.insert_comment_sharp)),
    );
  }
}
