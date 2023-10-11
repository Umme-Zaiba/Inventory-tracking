import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class SalesList extends StatefulWidget {
  final String customerName;
  final String salesDate;
  final String status;
  final String referenceNo;
  final String otherCharges;
  final String quantity;
  final String discount;
  final String grandTotal;
  final String amount;
  final String paymentType;
  final String email;
  final String phone;
  final String currency;

  SalesList({
    required this.customerName,
    required this.salesDate,
    required this.status,
    required this.referenceNo,
    required this.otherCharges,
    required this.quantity,
    required this.discount,
    required this.grandTotal,
    required this.amount,
    required this.paymentType,
    required this.email,
    required this.phone,
    required this.currency,
    
  });

  @override
  State<SalesList> createState() => _SalesListState();
}

class _SalesListState extends State<SalesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales List'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Customer Name: ${widget.customerName}'),
            Text('Sales Date: ${widget.salesDate}'),
            Text('Reference No: ${widget.referenceNo}'),
            Text('Email: ${widget.email}'),
            Text('Phone No.: ${widget.phone}'),
            Text('Status: ${widget.status}'),
            Text('Other Charges: ${widget.otherCharges}'),
            Text('Quantity: ${widget.quantity}'),
            Text('Discount: ${widget.discount}'),
            Text('Grand Total: ${widget.grandTotal}'),
            Text('Amount: ${widget.amount}'),
            Text('Currency: ${widget.currency}'),
            Text('Payment Type: ${widget.paymentType}'),
          ],
        ),
      ),
    );
  }
}
