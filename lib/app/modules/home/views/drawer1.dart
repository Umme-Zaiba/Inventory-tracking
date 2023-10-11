import 'package:flutter/material.dart';
import 'package:inventory/app/modules/customers/views/customer_list.dart';
import 'package:inventory/app/modules/customers/views/new_customer.dart';
import 'package:inventory/app/modules/home/views/home_view.dart';
import 'package:inventory/app/modules/items/views/item_list.dart';
import 'package:inventory/app/modules/items/views/new_items.dart';
import 'package:inventory/app/modules/purchase/views/new_purchase.dart';
import 'package:inventory/app/modules/purchase/views/purchase_list.dart';
import 'package:inventory/app/modules/sales/views/new_sales.dart';
import 'package:inventory/app/modules/sales/views/sales_list.dart';
import 'package:inventory/app/modules/suppliers/views/new_supplier.dart';
import 'package:inventory/app/modules/suppliers/views/supplier_list.dart';

class drawerview1 extends StatefulWidget {
  const drawerview1({Key? key});

  @override
  State<drawerview1> createState() => _drawerview1State();
}

class _drawerview1State extends State<drawerview1> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 227, 222, 241),
              Color.fromARGB(255, 249, 232, 174)
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFAF0E2), Color.fromRGBO(196, 201, 248, 1)],
                ),
              ),
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
            // Dashboard
            buildDrawerItem(
              title: 'Dashboard',
              icon: Icons.home,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                );
              },
            ),
            // Sales
            buildDrawerItemWithDropdown(
              title: 'Sales',
              icon: Icons.shopping_cart,
              items: [
                "New Sales",
                "Sales List",
              ],
              onChanged: (value) {
                Navigator.pop(context);
                if (value == "New Sales") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewSales(),
                    ),
                  );
                } else if (value == "Sales List") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SalesList(
                        customerName: '',
                        status: '',
                        salesDate: '',
                        referenceNo: '',
                        otherCharges: '',
                        quantity: '',
                        discount: '',
                        grandTotal: '',
                        amount: '',
                        paymentType: '',
                        email: '',
                        phone: '',
                        currency: '',
                      ),
                    ),
                  );
                }
              },
            ),
            // Customer
            buildDrawerItemWithDropdown(
              title: 'Customer',
              icon: Icons.people,
              items: [
                "New Customer",
                "Customer List",
              ],
              onChanged: (value) {
                Navigator.pop(context);
                if (value == "New Customer") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewCustomer(),
                    ),
                  );
                } else if (value == "Customer List") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerList(
                        customerName: '',
                        customerCode: '',
                        customerType: '',
                        mobileNo: '',
                        email: '',
                        country: '',
                        city: '',
                        postcode: '',
                        billAddress: '',
                        shipAddress: '',
                        paymentTerms: '',
                      ),
                    ),
                  );
                }
              },
            ),
            // Purchase
            buildDrawerItemWithDropdown(
              title: 'Purchase',
              icon: Icons.shopping_bag,
              items: [
                "New Purchase",
                "Purchase List",
              ],
              onChanged: (value) {
                Navigator.pop(context);
                if (value == "New Purchase") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPurchase(),
                    ),
                  );
                } else if (value == "Purchase List") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PurchaseList(
                        supplier: '',
                        purchaseOrderNumber: '',
                        transactionDate: '',
                        deliveryDate: '',
                        deliveryAddress: '',
                        contactInformation: '',
                        contactPerson: '',
                        email: '',
                        phone: '',
                        currency: '',
                        purchaseOrderItems: '',
                        total: '',
                        status: '',
                      ),
                    ),
                  );
                }
              },
            ),
            // Suppliers
            buildDrawerItemWithDropdown(
              title: 'Suppliers',
              icon: Icons.emoji_people,
              items: [
                "New Supplier",
                "Supplier List",
              ],
              onChanged: (value) {
                Navigator.pop(context);
                if (value == "New Supplier") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewSupplier(),
                    ),
                  );
                } else if (value == "Supplier List") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SupplierList(
                        supplierName: '',
                        supplierType: '',
                        supplierId: '',
                        contactInfo: '',
                        contactPerson: '',
                        email: '',
                        phone: '',
                        address: '',
                        billingAddress: '',
                        price: '',
                        notes: '',
                        paymentTerms: '',
                      ),
                    ),
                  );
                }
              },
            ),
            // Items
            buildDrawerItemWithDropdown(
              title: 'Items',
              icon: Icons.add_box,
              items: [
                "New Items",
                "Item List",
              ],
              onChanged: (value) {
                Navigator.pop(context);
                if (value == "New Items") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewItems(),
                    ),
                  );
                } else if (value == "Item List") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemList(
                        itemId: '',
                        itemType: '',
                        barcode: '',
                        quantity: '',
                        description: '',
                        supplierName: '',
                        image: '',
                        brand: '',
                        category: '',
                        finalPrice: '',
                        sku: '',
                      ),
                    ),
                  );
                }
              },
            ),
            buildDrawerItemWithDropdown(
              title: 'Reports',
              icon: Icons.pages_rounded,
              items: [
                "Report",
                "Report 2",
              ],
              onChanged: (value) {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build drawer items
  Widget buildDrawerItem({
    required String title,
    required IconData icon,
    required void Function() onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 16,
          ),
        ),
        leading: Icon(
          icon,
          color: Colors.grey[700],
          size: 24,
        ),
      ),
    );
  }

  Widget buildDrawerItemWithDropdown({
    required String title,
    required IconData icon,
    required List<String> items,
    required void Function(String?) onChanged,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.grey[800],
          fontSize: 16,
        ),
      ),
      leading: Icon(
        icon,
        color: Colors.grey[700],
        size: 24,
      ),
      trailing: DropdownButton<String>(
        items: items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
