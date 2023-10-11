import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class PurchaseList extends StatefulWidget {
  final String supplier;
  final String purchaseOrderNumber;
  final String transactionDate;
  final String deliveryDate;
  final String deliveryAddress;
  final String contactInformation;
  final String contactPerson;
  final String email;
  final String phone;
  final String currency;
  final String purchaseOrderItems;
  final String total;
  final String status;
  const PurchaseList({
    super.key,
    required this.supplier,
    required this.purchaseOrderNumber,
    required this.transactionDate,
    required this.deliveryDate,
    required this.deliveryAddress,
    required this.contactInformation,
    required this.contactPerson,
    required this.email,
    required this.phone,
    required this.currency,
    required this.purchaseOrderItems,
    required this.total,
    required this.status,
  });

  @override
  State<PurchaseList> createState() => _PurchaseListState();
}

class _PurchaseListState extends State<PurchaseList> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('Purchase List'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Customer Name: ${widget.supplier}'),
          Text('Purchase Order Number: ${widget.purchaseOrderNumber}'),
          Text('Transaction Date: ${widget.transactionDate}'),
          Text('Delivery Date: ${widget.deliveryDate}'),
          Text('Delivery Address: ${widget.deliveryAddress}'),
          Text('RContact information: ${widget.contactInformation}'),
          Text('Email: ${widget.email}'),
          Text('Phone: ${widget.phone}'),
          Text('Currrency: ${widget.currency}'),       
          Text('Purchase Order Items: ${widget.purchaseOrderItems}'),       
          Text('Status: ${widget.status}'),       
        ],
      ),
    ),
    );
  }
}
