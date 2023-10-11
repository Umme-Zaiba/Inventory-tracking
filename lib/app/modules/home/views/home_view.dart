import 'package:flutter/material.dart';
import 'package:inventory/app/modules/home/views/drawer1.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      drawer: drawerview1(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DashboardStat(title: "Total Items", value: "1000"),
                    DashboardStat(title: "Total Sales", value: "\$5000"),
                    DashboardStat(title: "Total Purchases", value: "\$3000"),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Divider(height: 2.0, thickness: 2.0, color: Colors.grey),
              SizedBox(height: 20.0),
              Text(
                "Recently Added Items",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              DataTable(
                columns: [
                  DataColumn(label: Text("Item")),
                  DataColumn(label: Text("Date Added")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("Item 1")),
                    DataCell(Text("2023-10-01")),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Item 2")),
                    DataCell(Text("2023-10-02")),
                  ]),
                  // Add more rows as needed
                ],
              ),
              SizedBox(height: 20.0),
              Divider(height: 2.0, thickness: 2.0, color: Colors.grey),
              SizedBox(height: 20.0),
              Text(
                "Stock Alert",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                
                color: Color.fromARGB(255, 235, 90, 80),
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Some items are running low!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20.0),
              Divider(height: 2.0, thickness: 2.0, color: Colors.grey),
              SizedBox(height: 20.0),
              Text(
                "Expired Items",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Colors.amber,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Check and remove expired items.",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20.0),
              Divider(height: 2.0, thickness: 2.0, color: Colors.grey),
              SizedBox(height: 20.0),
              Text(
                "Trending Items",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),
              // Implement your pie chart here
              // Placeholder(
              //   // Replace with your pie chart widget
              //   color: Colors.orangeAccent,
              //   fallbackHeight: 200,
              //   fallbackWidth: double.infinity,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardStat extends StatelessWidget {
  final String title;
  final String value;

  DashboardStat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.0, // Adjust the width as needed
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 197, 202, 241), Color.fromARGB(255, 137, 150, 251)], // Adjust the colors as needed
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            "Total: $value", // Display the total amount here
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
