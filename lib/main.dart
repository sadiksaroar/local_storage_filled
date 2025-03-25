import 'package:flutter/material.dart';

void main() {
  runApp(LocalStorageApp());
}

class LocalStorageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Local Storage',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LocalStorageScreen(),
    );
  }
}

class LocalStorageScreen extends StatelessWidget {
  // Sample list of time entries (these could come from local storage)
  final List<String> timeEntries = [
    "Entry 1: Task A - 2 hours",
    "Entry 2: Task B - 1 hour",
    "Entry 3: Task C - 3 hours",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Storage")),
      body:
          timeEntries.isEmpty
              ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.hourglass_empty, size: 100, color: Colors.grey),
                    SizedBox(height: 20),
                    Text(
                      "No time entries found.",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              )
              : ListView.builder(
                itemCount: timeEntries.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(timeEntries[index]),
                      leading: Icon(Icons.access_time, color: Colors.blue),
                    ),
                  );
                },
              ),
    );
  }
}
