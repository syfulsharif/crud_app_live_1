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
          return ListTile(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      // titlePadding: EdgeInsets.only(left: 20),
                      contentPadding:
                          const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      title: Row(
                        children: [
                          const Text('Choose an Action'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close),
                          )
                        ],
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: const Icon(Icons.edit),
                            title: const Text('Update'),
                          ),
                          const Divider(
                            height: 0,
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(Icons.delete),
                            title: const Text('Delete'),
                          ),
                        ],
                      ),
                    );
                  });
            },
            title: const Text('Product Name'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product Code'),
                Text('Total Price'),
                Text('Available Units'),
              ],
            ),
            leading: Image.network(
              'https://uploads.teamtreehouse.com/production/profile-photos/10819390/ipad_small_2x_6-01.jpg',
              width: 50,
              errorBuilder: (_, __, ___) {
                return const Icon(
                  Icons.image,
                  size: 32,
                );
              },
            ),
            trailing: const Text('Unit Price'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
