import 'package:flutter/material.dart';

class TransactionItems extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const TransactionItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: MediaQuery.sizeOf(context).width * 0.08,
        mainAxisSpacing: MediaQuery.sizeOf(context).width * 0.001,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue, // Replace with your color
              child: Text(
                items[index]['icon'],
                style: TextStyle(fontSize: 30), // Replace with your font style
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),
            Text(
              items[index]['text'],
              style: TextStyle(color: Colors.white), // Replace with your font style
              textAlign: TextAlign.center,
            ),
          ],
        );
      },
    );
  }
}
