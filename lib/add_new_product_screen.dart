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
        child: Column(
          children: [
            TextFormField(
              decoration: appInputDecoration('Product Name'),
            ),
            TextFormField(
              decoration: appInputDecoration('Product Code'),
            ),
            TextFormField(
              decoration: appInputDecoration('Price'),
            ),
            TextFormField(
              decoration: appInputDecoration('Quantity'),
            ),
            TextFormField(
              decoration: appInputDecoration('Total Price'),
            ),
            TextFormField(
              decoration: appInputDecoration('Image'),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12)
                ),
                onPressed: () {},
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
