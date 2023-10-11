import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class CustomerList extends StatefulWidget {
  final String customerName;
  final String customerCode;
  final String customerType;
  final String mobileNo;
  final String email;
  final String country;
  final String city;
  final String postcode;
  final String billAddress;
  final String shipAddress;
  final String paymentTerms;
  const CustomerList(
      {super.key,
      required this.customerName,
      required this.customerCode,
      required this.customerType,
      required this.mobileNo,
      required this.email,
      required this.country,
      required this.city,
      required this.postcode,
       required this.billAddress, required this.shipAddress, required this.paymentTerms});

  @override
  State<CustomerList> createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer List'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Customer Name: ${widget.customerName}'),
          Text('Customer Name: ${widget.customerCode}'),
          Text('Customer Name: ${widget.customerType}'),
          Text('Sales Date: ${widget.mobileNo}'),
          Text('Status: ${widget.email}'),
          Text('Reference No: ${widget.country}'),
          Text('Other Charges: ${widget.city}'),
          Text('Quantity: ${widget.postcode}'),
          Text('Discount: ${widget.billAddress}'),       
          Text('Discount: ${widget.shipAddress}'),       
          Text('Discount: ${widget.paymentTerms}'),       
        ],
      ),
    ),
    );
  }
}
