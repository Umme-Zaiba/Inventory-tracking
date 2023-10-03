import 'package:flutter/material.dart';

class drawerview1 extends StatefulWidget {
  const drawerview1({super.key});

  @override
  State<drawerview1> createState() => _drawerview1State();
}

class _drawerview1State extends State<drawerview1> {
  // List<String> saleitems = ['A', 'B', 'C', 'D'];
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

            // for (int i = 0; i < draweritems.length; i++)
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, routes[i]);
              },
              child: ListTile(
                title: Text(
                  'Sales',
                  // draweritems[i],
                  style: TextStyle(color: Colors.grey[700]),
                ),
                trailing: DropdownButton<String>(
                  items: <String>['POS', 'New Sales', 'sales list', ''].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
