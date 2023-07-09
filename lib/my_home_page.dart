import 'package:flutter/material.dart';
import 'package:live_class1_module9/add_new_product_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crud App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text('Product Name'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product Code'),
                Text('Total Price'),
                Text('Available Units'),
              ],
            ),
            leading: Icon(
              Icons.image,
              size: 32,
            ),
            trailing: Text('Unit Price'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
