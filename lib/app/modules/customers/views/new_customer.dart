import 'package:flutter/material.dart';
import 'package:inventory/app/modules/customers/views/customer_list.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class NewCustomer extends StatefulWidget {
  const NewCustomer({Key? key});

  @override
  State<NewCustomer> createState() => _NewCustomerState();
}

class _NewCustomerState extends State<NewCustomer> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerCodeController = TextEditingController();
  TextEditingController customerTypeController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController billAddressController = TextEditingController();
  TextEditingController shipAddressController = TextEditingController();
  TextEditingController paymentTermsController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();

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
        title: Text('New Customer'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField('Customer Name', customerNameController, TextInputType.text),
            _buildTextField('Customer Code', customerCodeController, TextInputType.text),
            _buildTextField('Customer Type', customerTypeController, TextInputType.text),
            _buildTextField('Mobile no', mobileNoController, TextInputType.phone),
            _buildTextField('Email', emailController, TextInputType.emailAddress),
            _buildTextField('Country', countryController, TextInputType.text),
            _buildTextField('City', cityController, TextInputType.text),
            _buildTextField('Postcode', postcodeController, TextInputType.number),
            _buildTextField('Billing Address', billAddressController, TextInputType.streetAddress),
            _buildTextField('Shipping Address', shipAddressController, TextInputType.streetAddress),
            _buildTextField('Payment terms', paymentTermsController, TextInputType.text),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform save action here
                    _navigateToCustomerListPage(context);
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

  void _navigateToCustomerListPage(BuildContext context) {
    final String customerName = customerNameController.text;
    final String customerCode = customerCodeController.text;
    final String customerType = customerTypeController.text;
    final String mobileNo = mobileNoController.text;
    final String email = emailController.text;
    final String country = countryController.text;
    final String city = cityController.text;
    final String postcode = postcodeController.text;
    final String billAddress = billAddressController.text;
    final String shipAddress = shipAddressController.text;
    final String paymentTerms = paymentTermsController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CustomerList(
          customerName: customerName,
          customerCode: customerCode,
          customerType: customerType,
          mobileNo: mobileNo,
          email: email,
          country: country,
          city: city,
          postcode: postcode,
          billAddress: billAddress,
          shipAddress: shipAddress,
          paymentTerms: paymentTerms,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of text editing controllers when the page is disposed
    customerNameController.dispose();
    customerCodeController.dispose();
    customerTypeController.dispose();
    mobileNoController.dispose();
    emailController.dispose();
    countryController.dispose();
    cityController.dispose();
    postcodeController.dispose();
    billAddressController.dispose();
    shipAddressController.dispose();
    paymentTermsController.dispose();
    super.dispose();
  }
}
