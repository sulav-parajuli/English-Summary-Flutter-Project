import 'package:english_summary/data.dart';
import 'package:english_summary/summary_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Summary")),
      body: ListView.builder(
          itemCount: summaries.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SummaryView(
                    title: summaries[index]['title'],
                    image: summaries[index]['image'],
                    author: summaries[index]['author'],
                    summaries: summaries[index]['data'],
                  );
                }));
              },
              leading: CircleAvatar(
                backgroundImage: AssetImage(summaries[index]["image"]),
              ),
              title: Text(summaries[index]['title']),
              subtitle: Text(summaries[index]['author']),
            );
          }),
    );
  }
}
