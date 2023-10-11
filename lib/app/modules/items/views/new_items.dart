import 'package:flutter/material.dart';
import 'package:inventory/app/modules/items/views/item_list.dart';

class NewItems extends StatefulWidget {
  const NewItems({Key? key}) : super(key: key);

  @override
  _NewItemsState createState() => _NewItemsState();
}

class _NewItemsState extends State<NewItems> {
  TextEditingController itemIdController = TextEditingController();
  TextEditingController itemTypeController = TextEditingController();
  TextEditingController barcodeController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController supplierNameController = TextEditingController();
  TextEditingController imageController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController finalPriceController = TextEditingController();
  TextEditingController skuController = TextEditingController();

  OutlineInputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.orangeAccent, // You can change the border color here
    ),
    borderRadius: BorderRadius.circular(12.0),
  );

  Widget _buildTextField(String labelText, TextEditingController controller, TextInputType keyboardType) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.0),
            border: _border,
            enabledBorder: _border,
            focusedBorder: _border,
          ),
          keyboardType: keyboardType,
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Items'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField('Item ID', itemIdController, TextInputType.text),
            _buildTextField('Item Type', itemTypeController, TextInputType.text),
            _buildTextField('Barcode', barcodeController, TextInputType.text),
            _buildTextField('Quantity', quantityController, TextInputType.number),
            _buildTextField('Description', descriptionController, TextInputType.text),
            _buildTextField('Supplier Name', supplierNameController, TextInputType.text),
            _buildTextField('Image', imageController, TextInputType.text),
            _buildTextField('Brand', brandController, TextInputType.text),
            _buildTextField('Category', categoryController, TextInputType.text),
            _buildTextField('Final Price', finalPriceController, TextInputType.number),
            _buildTextField('SKU', skuController, TextInputType.text),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform save action here
                // You can access the values from the controllers
                _navigateToItemListPage(context);
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 153, 164, 242),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToItemListPage(BuildContext context) {
  final String itemId = itemIdController.text;
  final String itemType = itemTypeController.text;
  final String barcode = barcodeController.text;
  final String quantity = quantityController.text;
  final String description = descriptionController.text;
  final String supplierName = supplierNameController.text;
  final String image = imageController.text;
  final String brand = brandController.text;
  final String category = categoryController.text;
  final String finalPrice = finalPriceController.text;
  final String sku = skuController.text;

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ItemList(
        itemId: itemId,
        itemType: itemType,
        barcode: barcode,
        quantity: quantity,
        description: description,
        supplierName: supplierName,
        image: image,
        brand: brand,
        category: category,
        finalPrice: finalPrice,
        sku: sku,
      ),
    ),
  );
}


  @override
  void dispose() {
    // Dispose of text editing controllers when the page is disposed
    itemIdController.dispose();
    itemTypeController.dispose();
    barcodeController.dispose();
    quantityController.dispose();
    descriptionController.dispose();
    supplierNameController.dispose();
    imageController.dispose();
    brandController.dispose();
    categoryController.dispose();
    finalPriceController.dispose();
    skuController.dispose();
    super.dispose();
  }
}
