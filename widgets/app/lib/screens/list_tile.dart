import 'package:flutter/material.dart';

void main() {
  runApp(const App());  // Main app entry point
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Tile Example",  // Setting app title
      theme: ThemeData(
        primarySwatch: Colors.green,  // Setting a green theme
      ),
      home: ListViewExample(),  // Defining the home screen as ListViewExample
    );
  }
}

class ListViewExample extends StatelessWidget {
  ListViewExample({super.key});

  // Sample data for the list (fruit names and icons)
  final List<Map<String, dynamic>> fruits = [
    {"name": "Apple", "icon": Icons.apple, "color": Colors.red, "price": "\$1.99/kg"},
    {"name": "Banana", "icon": Icons.local_florist, "color": Colors.yellow, "price": "\$0.99/kg"},
    {"name": "Grapes", "icon": Icons.grass, "color": Colors.purple, "price": "\$2.99/kg"},
    {"name": "Orange", "icon": Icons.brightness_1, "color": Colors.orange, "price": "\$1.49/kg"},
    {"name": "Strawberry", "icon": Icons.star, "color": Colors.pink, "price": "\$3.49/kg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruits List"),  // AppBar title
      ),
      body: ListView.builder(
        itemCount: fruits.length,  // Number of items in the list
        itemBuilder: (context, index) {
          final item = fruits[index];  // Accessing each item in the list

          // Returning ListTile for each fruit
          return ListTile(
            leading: Icon(item["icon"], color: item["color"]),  // Displaying icon with color
            title: Text(item["name"], style: TextStyle(color: item["color"])),  // Displaying fruit name
            subtitle: Text("Price: ${item["price"]}", style: TextStyle(color: item["color"])),  // Displaying the price as subtitle
            trailing: Icon(Icons.chevron_right, color: item["color"]),  // Adding a trailing icon
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You selected ${item["name"]}'),  // Displaying a message when tapped(snackbar)
                ),
              );
            },
          );
        },
      ),
    );
  }
}
