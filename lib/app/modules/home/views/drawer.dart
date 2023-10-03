import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../routes/app_pages.dart';

class drawerview extends StatefulWidget {
  const drawerview({super.key});
  
  @override
  State<drawerview> createState() => _drawerviewState();
}

class _drawerviewState extends State<drawerview> {
  List<String> draweritems = ["Sales", "Customers", "Purchase", "Suppliers", "Items", "Expenses"];
  List<String> routes = [Routes.SALES, Routes.CUSTOMERS, Routes.PURCHASE, Routes.SUPPLIERS, Routes.ITEMS, Routes.EXPENSES];
  List<IconData> icons = [Icons.shopping_cart_rounded, Icons.people_rounded, Icons.attach_money_rounded, Icons.supervised_user_circle_rounded, Icons.inventory_rounded, Icons.receipt_rounded];
   
  List<String> salesitems = ["POS","New Sales","Sales List","New Sales Return","Sales Return List"];
  List<String> purchaseitems =["New Purchase", "Purchase List", "New Purchase Return", "Purchase Return List" ];

  late String selectedSalesItem ="";
  late String selectedPurchaseItem = "";
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 227, 229, 248),
        child: ListView(
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 240, 226),
                ),
                child: Center(
                  child: Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // currentPage = 'Dashboard'; // Set the current page to the desired page name
                });
                Navigator.pop(context);
              },
              child: ListTile(
                title: Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
              ),
            ),
            
            for (int i = 0; i < draweritems.length; i++)
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, routes[i]);
                },
                child: ListTile(
                  title: Text(
                    draweritems[i],
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  leading: Icon(icons[i]),
                  trailing: DropdownButton<String>(
                    value: i == 0 ? selectedSalesItem : (i == 2 ? selectedPurchaseItem : null),
                    items: i == 0 ? salesitems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList() : (i == 2 ? purchaseitems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList() : null),
                    onChanged: (String? newValue) {
                      setState(() {
                        if (i == 0) {
                          selectedSalesItem = newValue!;
                        } else if (i == 2) {
                          selectedPurchaseItem = newValue!;
                        }
                      });
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
