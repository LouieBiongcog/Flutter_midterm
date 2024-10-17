import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LouiejayBiongcog_MidtermExam',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LouiejayBiongcog_MidtermExam'),
        ),
        body: ItemList(),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List<String> items = [
    "Raul", "Bensoy", "Dodot", "Dodo", "ebang",
    "emon", "roberto", "joselito", "abdul", "Karlo"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemCard(itemName: items[index]);
      },
    );
  }
}

class ItemCard extends StatefulWidget {
  final String itemName;

  ItemCard({required this.itemName});

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  Color cardColor = Colors.purple;
  String buttonText = 'Add';

  void _addItem() {
    setState(() {
      cardColor = Colors.blue; 
      buttonText = 'Added';     
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.itemName,
              style: TextStyle(fontSize: 30),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  print( '${widget.itemName}');
                },
                child: Text('Details'),
              ),
              ElevatedButton(
                onPressed: _addItem,
                child: Text(buttonText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
