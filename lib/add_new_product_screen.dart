import 'package:flutter/material.dart';
import 'package:live_class1_module9/style.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ('Product Name'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ('Product Code'),
              ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ('Product Price),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ('Product Code'),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: ('Product Code'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
