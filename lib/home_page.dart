import 'package:flutter/material.dart';

import 'package:localdb/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) {
          return Scaffold(
            appBar: AppBar(title: const Text("Provider")),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("http://source.unsplash.com/random/$index")),
                    trailing: IconButton(onPressed: () {
                      
                    } , icon:const Icon(Icons.favorite_border))
                  ),
                );
              },
            ),
          );
        });
  }
}