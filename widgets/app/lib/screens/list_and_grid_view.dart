import 'package:flutter/material.dart';

void main() {
  runApp(const App());  // Main app entry point
}

class App extends StatelessWidget {
  const App({super.key});  // Using super parameters for 'key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Fruit List & Grid',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ListGridSwitcher(),  // Default home widget
    );
  }
}

class ListGridSwitcher extends StatefulWidget {
  const ListGridSwitcher({super.key});

  @override
  ListGridSwitcherState createState() => ListGridSwitcherState();  // Create state
}

class ListGridSwitcherState extends State<ListGridSwitcher> {
  bool showGrid = false;

  // Updated items with fruits and their respective colors
  final List<Map<String, dynamic>> items = [
    {"name": "Apple", "color": Colors.red[300]},
    {"name": "Banana", "color": Colors.yellow[300]},
    {"name": "Orange", "color": Colors.orange[300]},
    {"name": "Grapes", "color": Colors.purple[300]},
    {"name": "Strawberry", "color": Colors.red[400]},
    {"name": "Blueberry", "color": Colors.blue[300]},
    {"name": "Pineapple", "color": Colors.yellow[400]},
    {"name": "Kiwi", "color": Colors.green[400]},
    {"name": "Mango", "color": Colors.orange[400]},
    {"name": "Watermelon", "color": Colors.green[300]},
    {"name": "Watermelon", "color": Colors.green[300]},
    {"name": "Watermelon", "color": Colors.green[300]},
    {"name": "Watermelon", "color": Colors.green[300]},
    {"name": "Watermelon", "color": Colors.green[300]},
    {"name": "Watermelon", "color": Colors.green[300]},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(showGrid ? 'Fruit Grid View' : 'Fruit List View'),
        actions: [
          IconButton(
            icon: Icon(showGrid ? Icons.list : Icons.grid_view),
            onPressed: () {
              setState(() {
                showGrid = !showGrid;  // Toggle between grid and list views
              });
            },
          )
        ],
      ),
      body: showGrid ? buildGridView() : buildListView(),
    );
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: Icon(Icons.local_florist, color: item["color"]),  
          title: Text(item["name"], style: TextStyle(color: item["color"])),
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('You selected ${item["name"]}'),
            ));
          },
        );
      },
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,  // 2 items per row
        crossAxisSpacing: 10.0,  // Spacing between columns
        mainAxisSpacing: 10.0,  // Spacing between rows
        childAspectRatio: 1.0,  // Square-shaped grid items
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('You selected ${item["name"]}'),
            ));
          },
          child: Container(
            decoration: BoxDecoration(
              color: item["color"],  // Fruit color for background
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Text(
              item["name"],
              style: const TextStyle(fontSize: 18, color: Colors.white),  // White text for better contrast
            ),
          ),
        );
      },
      padding: const EdgeInsets.all(10.0),
    );
  }
}
