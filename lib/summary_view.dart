import 'package:flutter/material.dart';

class SummaryView extends StatelessWidget {
  final String? title;
  final String? author;
  final String? image;
  final String? summaries;
  const SummaryView(
      {super.key, this.title, this.author, this.image, this.summaries});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Notes View"),
        ),
        body: ListView(
          children: [
            Container(
              height: 300,
              width: double.maxFinite,
              child: Image.asset(image!),
            ),
            Center(child: Text(title!)),
            Card(
              child: Text(summaries!),
            )
          ],
        ));
  }
}
