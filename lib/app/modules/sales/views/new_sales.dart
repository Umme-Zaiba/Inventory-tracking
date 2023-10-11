import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';
import 'package:inventory/app/modules/sales/views/sales_list.dart';

class NewSales extends StatefulWidget {
  const NewSales({Key? key});

  @override
  State<NewSales> createState() => _NewSalesState();
}

class _NewSalesState extends State<NewSales> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController salesDateController = TextEditingController();
  TextEditingController statusController = TextEditingController();
  TextEditingController referenceNoController = TextEditingController();
  TextEditingController otherChargesController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController grandTotalController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController paymentTypeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController currencyController = TextEditingController();

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

  List<String> statusOptions = ['Option 1', 'Option 2', 'Option 3'];
  List<String> currencyOptions = ['USD', 'EUR', 'GBP'];
  List<String> paymentTypeOptions = ['Credit Card', 'Cash', 'Bank Transfer'];

  Widget _buildStatusDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        DropdownButton<String>(
          value:
              statusController.text.isNotEmpty ? statusController.text : null,
          items: statusOptions.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              statusController.text = newValue ?? '';
            });
          },
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildCurrencyDropdown() {
    // Similar code for "Currency" dropdown
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Currency',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        DropdownButton<String>(
          value:
              currencyController.text.isNotEmpty ? currencyController.text : null,
          items: currencyOptions.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              currencyController.text = newValue ?? '';
            });
          },
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildPaymentTypeDropdown() {
    // Similar code for "Payment Type" dropdown
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment type',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        DropdownButton<String>(
          value:
              paymentTypeController.text.isNotEmpty ? paymentTypeController.text : null,
          items: paymentTypeOptions.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              paymentTypeController.text = newValue ?? '';
            });
          },
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Sales'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildTextField(
                'Customer Name', customerNameController, TextInputType.text),
            _buildTextField(
                'Sales Date', salesDateController, TextInputType.datetime),
            _buildTextField('Reference No/Sales Order Number',
                referenceNoController, TextInputType.text),
            _buildTextField(
                'Email', emailController, TextInputType.emailAddress),
            _buildTextField(
                'Phone Number', phoneController, TextInputType.phone),
            // _buildTextField('Status', statusController, TextInputType.text),
            _buildStatusDropdown(),
            _buildTextField(
                'Other Charges', otherChargesController, TextInputType.number),
            _buildTextField(
                'Quantity', quantityController, TextInputType.number),
            _buildTextField(
                'Discount', discountController, TextInputType.number),
            _buildTextField(
                'Grand Total', grandTotalController, TextInputType.number),
            _buildTextField('Amount', amountController, TextInputType.number),
            // _buildTextField('Currency', currencyController, TextInputType.text),
            _buildCurrencyDropdown(),
            // _buildTextField('Payment Type', paymentTypeController, TextInputType.text),
            _buildPaymentTypeDropdown(),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform save action here
                    _navigateToSalesListPage(context);
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
                    // elevation: 15,
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
                    // elevation: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSalesListPage(BuildContext context) {
    final String customerName = customerNameController.text;
    final String salesDate = salesDateController.text;
    final String status = statusController.text;
    final String referenceNo = referenceNoController.text;
    final String otherCharges = otherChargesController.text;
    final String quantity = quantityController.text;
    final String discount = discountController.text;
    final String grandTotal = grandTotalController.text;
    final String amount = amountController.text;
    final String paymentType = paymentTypeController.text;
    final String email = emailController.text;
    final String phone = phoneController.text;
    final String currency = currencyController.text;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SalesList(
          customerName: customerName,
          salesDate: salesDate,
          status: status,
          referenceNo: referenceNo,
          otherCharges: otherCharges,
          quantity: quantity,
          discount: discount,
          grandTotal: grandTotal,
          amount: amount,
          paymentType: paymentType,
          email: email,
          phone: phone,
          currency: currency,
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of text editing controllers when the page is disposed
    customerNameController.dispose();
    salesDateController.dispose();
    statusController.dispose();
    referenceNoController.dispose();
    otherChargesController.dispose();
    quantityController.dispose();
    discountController.dispose();
    grandTotalController.dispose();
    amountController.dispose();
    paymentTypeController.dispose();
    emailController.dispose();
    phoneController.dispose();
    currencyController.dispose();
    super.dispose();
  }
}
