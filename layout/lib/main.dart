import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout Demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}

/* TITLE SECTION -  ROW#1 */
Widget titleSection =Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* 1 */
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* 2 */
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschignen Lake Compund',
                style:TextStyle(
                  fontWeight:FontWeight.bold,
                )
              ),
            ),
            Text (
              'Kandesterg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Color.red[500],
      ),
      Text('41'),
    ],
  ),
);