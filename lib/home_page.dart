import 'package:flutter/material.dart';
import 'package:listkuliner/list_item.dart';
import 'makanan.dart';
import 'styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: const Text(
            "Kuliner Nusantara",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.list_alt_sharp, size: 30),
                SizedBox(width: 10),
                Text('List Kuliner', style: textHeader1),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 20)),
            Expanded(
              child: ListView.builder(
                itemCount: listMakanan.length,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return ListItem(makanan: listMakanan[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
