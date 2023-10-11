import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class ItemList extends StatefulWidget {
  final String itemId;
  final String itemType;
  final String barcode;
  final String quantity;
  final String description;
  final String supplierName;
  final String image;
  final String brand;
  final String category;
  final String finalPrice;
  final String sku;

  ItemList({
    required this.itemId,
    required this.itemType,
    required this.barcode,
    required this.quantity,
    required this.description,
    required this.supplierName,
    required this.image,
    required this.brand,
    required this.category,
    required this.finalPrice,
    required this.sku,
  });

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Item ID: ${widget.itemId}'),
            Text('Item Type: ${widget.itemType}'),
            Text('Barcode: ${widget.barcode}'),
            Text('Quantity: ${widget.quantity}'),
            Text('Description: ${widget.description}'),
            Text('Supplier Name: ${widget.supplierName}'),
            Text('Image: ${widget.image}'),
            Text('Brand: ${widget.brand}'),
            Text('Category: ${widget.category}'),
            Text('Final Price: ${widget.finalPrice}'),
            Text('SKU: ${widget.sku}'),
          ],
        ),
      ),
    );
  }
}
