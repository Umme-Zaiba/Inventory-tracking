import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';
import 'package:inventory/app/modules/purchase/views/purchase_list.dart';

class NewPurchase extends StatefulWidget {
  const NewPurchase({Key? key});

  @override
  State<NewPurchase> createState() => _NewPurchaseState();
}

class _NewPurchaseState extends State<NewPurchase> {
  TextEditingController supplierController = TextEditingController();
  TextEditingController purchaseOrderNumberController = TextEditingController();
  TextEditingController transactionDateController = TextEditingController();
  TextEditingController deliveryDateController = TextEditingController();
  TextEditingController deliveryAddressController = TextEditingController();
  TextEditingController contactInformationController = TextEditingController();
  TextEditingController contactPersonController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController currencyController = TextEditingController();
  TextEditingController purchaseOrderItemsController = TextEditingController();
  TextEditingController totalController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  OutlineInputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.orangeAccent, // You can change the border color here
    ),
    borderRadius: BorderRadius.circular(12.0),
  );

  Widget _buildTextField(String labelText, TextEditingController controller,
      TextInputType keyboardType) {
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
        title: Text('New Purchase'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField('Supplier', supplierController, TextInputType.text),
            _buildTextField('Purchase Order Number',
                purchaseOrderNumberController, TextInputType.text),
            _buildTextField('Transaction Date', transactionDateController,
                TextInputType.datetime),
            _buildTextField('Delivery Date', deliveryDateController,
                TextInputType.datetime),
            _buildTextField('Delivery Address', deliveryAddressController,
                TextInputType.streetAddress),
            _buildTextField('Contact Information', contactInformationController,
                TextInputType.text),
            _buildTextField(
                'Contact Person', contactPersonController, TextInputType.text),
            _buildTextField(
                'Email', emailController, TextInputType.emailAddress),
            _buildTextField('Phone', phoneController, TextInputType.phone),
            _buildTextField('Currency', currencyController, TextInputType.text),
            _buildTextField('Purchase Order Items',
                purchaseOrderItemsController, TextInputType.text),
            _buildTextField('Total', totalController, TextInputType.number),
            _buildTextField('Status', statusController, TextInputType.text),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform save action here
                    _navigateToPurchaseListPage(context);
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Close the page
                  },
                  child: Text(
                    'Close',
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
          ],
        ),
      ),
    );
  }

  void _navigateToPurchaseListPage(BuildContext context) {
    final String supplier = supplierController.text;
    final String purchaseOrderNumber = purchaseOrderNumberController.text;
    final String transactionDate = transactionDateController.text;
    final String deliveryDate = deliveryDateController.text;
    final String deliveryAddress = deliveryAddressController.text;
    final String contactInformation = contactInformationController.text;
    final String contactPerson = contactPersonController.text;
    final String email = emailController.text;
    final String phone = phoneController.text;
    final String currency = currencyController.text;
    final String purchaseOrderItems = purchaseOrderItemsController.text;
    final String total = totalController.text;
    final String status = statusController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PurchaseList(
          supplier: supplier,
          purchaseOrderNumber: purchaseOrderNumber,
          transactionDate: transactionDate,
          deliveryDate: deliveryDate,
          deliveryAddress: deliveryAddress,
          contactInformation: contactInformation,
          contactPerson: contactPerson,
          email: email,
          phone: phone,
          currency: currency,
          purchaseOrderItems: purchaseOrderItems,
          total: total,
          status: status,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of text editing controllers when the page is disposed
    supplierController.dispose();
    purchaseOrderNumberController.dispose();
    transactionDateController.dispose();
    deliveryDateController.dispose();
    deliveryAddressController.dispose();
    contactInformationController.dispose();
    contactPersonController.dispose();
    emailController.dispose();
    phoneController.dispose();
    currencyController.dispose();
    purchaseOrderItemsController.dispose();
    totalController.dispose();
    statusController.dispose();
    super.dispose();
  }
}
