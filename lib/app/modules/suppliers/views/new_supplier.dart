import 'package:flutter/material.dart';
import 'package:inventory/app/modules/suppliers/views/supplier_list.dart';

class NewSupplier extends StatefulWidget {
  const NewSupplier({Key? key}) : super(key: key);

  @override
  State<NewSupplier> createState() => _NewSupplierState();
}

class _NewSupplierState extends State<NewSupplier> {
  TextEditingController supplierNameController = TextEditingController();
  TextEditingController supplierTypeController = TextEditingController();
  TextEditingController supplierIdController = TextEditingController();
  TextEditingController contactInfoController = TextEditingController();
  TextEditingController contactPersonController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController billingAddressController = TextEditingController();
  TextEditingController paymentTermsController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  OutlineInputBorder _border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.orangeAccent, // You can change the border color here
    ),
    borderRadius: BorderRadius.circular(12.0),
  );

  Widget _buildTextField(
    String labelText,
    TextEditingController controller,
    TextInputType keyboardType,
  ) {
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
        title: Text('New Supplier'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField(
                'Supplier Name', supplierNameController, TextInputType.text),
            _buildTextField(
                'Supplier Type', supplierTypeController, TextInputType.text),
            _buildTextField(
                'Supplier ID', supplierIdController, TextInputType.text),
            _buildTextField(
                'Contact Info', contactInfoController, TextInputType.text),
            _buildTextField(
                'Contact Person', contactPersonController, TextInputType.text),
            _buildTextField(
                'Email', emailController, TextInputType.emailAddress),
            _buildTextField(
                'Phone Number', phoneController, TextInputType.phone),
            _buildTextField('Address', addressController, TextInputType.text),
            _buildTextField('Billing Address', billingAddressController,
                TextInputType.text),
            _buildTextField(
                'Payment Terms', paymentTermsController, TextInputType.text),
            _buildTextField('Price', priceController, TextInputType.number),
            _buildTextField('Notes', notesController, TextInputType.text),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Perform save action here
                _navigateToSupplierListPage(context);
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
            SizedBox(height: 10.0),
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
      ),
    );
  }

  void _navigateToSupplierListPage(BuildContext context) {
    final String supplierName = supplierNameController.text;
    final String supplierType = supplierTypeController.text;
    final String supplierId = supplierIdController.text;
    final String contactInfo = contactInfoController.text;
    final String contactPerson = contactPersonController.text;
    final String email = emailController.text;
    final String phone = phoneController.text;
    final String address = addressController.text;
    final String billingAddress = billingAddressController.text;
    final String price = priceController.text;
    final String notes = notesController.text;
    final String paymentTerms = paymentTermsController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SupplierList(
            supplierName: supplierName,
            supplierType: supplierType,
            supplierId: supplierId,
            contactInfo: contactInfo,
            contactPerson: contactPerson,
            email: email,
            phone: phone,
            address: address,
            billingAddress: billingAddress,
            price: price,
            notes: notes,
            paymentTerms: paymentTerms),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of text editing controllers when the page is disposed
    supplierNameController.dispose();
    supplierTypeController.dispose();
    supplierIdController.dispose();
    contactInfoController.dispose();
    contactPersonController.dispose();
    emailController.dispose();
    phoneController.dispose();
    addressController.dispose();
    billingAddressController.dispose();
    paymentTermsController.dispose();
    priceController.dispose();
    notesController.dispose();
    super.dispose();
  }
}
