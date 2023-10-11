import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class SupplierList extends StatefulWidget {
  final String supplierName;
  final String supplierType;
  final String supplierId;
  final String contactInfo;
  final String contactPerson;
  final String email;
  final String phone;
  final String address;
  final String billingAddress;
  final String price;
  final String notes;
  final String paymentTerms;

  const SupplierList({
    Key? key,
    required this.supplierName,
    required this.supplierType,
    required this.supplierId,
    required this.contactInfo,
    required this.contactPerson,
    required this.email,
    required this.phone,
    required this.address,
    required this.billingAddress,
    required this.price,
    required this.notes,
    required this.paymentTerms,
  }) : super(key: key);

  @override
  State<SupplierList> createState() => _SupplierListState();
}

class _SupplierListState extends State<SupplierList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Supplier List'),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Supplier Name: ${widget.supplierName}'),
            Text('Supplier Type: ${widget.supplierType}'),
            Text('Supplier ID: ${widget.supplierId}'),
            Text('Contact Info: ${widget.contactInfo}'),
            Text('Contact Person: ${widget.contactPerson}'),
            Text('Email: ${widget.email}'),
            Text('Phone: ${widget.phone}'),
            Text('Address: ${widget.address}'),
            Text('Billing Address: ${widget.billingAddress}'),
            Text('Price: ${widget.price}'),
            Text('Notes: ${widget.notes}'),
            Text('Payment Terms: ${widget.paymentTerms}'),
          ],
        ),
      ),
    );
  }
}
