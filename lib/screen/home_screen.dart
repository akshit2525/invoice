import 'package:flutter/material.dart';
import 'package:invoice_app/uttils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Manage Product",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'invoice');
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: Global.g1.Invoicelist
                .map((e) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Customer Name : ${e['name']}"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Invoice No : ${e['invoice']}"),
                                IconButton(onPressed: (){
                                  setState(() {
                                    Global.g1.Invoicelist.remove(e);
                                  });
                                }, icon: Icon(Icons.delete_forever))
                              ],
                            ),
                            Text("Product Name : ${e['pname']}"),
                            Text("Quantity : ${e['quantity']}"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Product price : ${e['price']}"),
                                IconButton(onPressed: (){
                                  setState(() {
                                    Global.g1.Invoicelist.remove(e);
                                  });
                                }, icon: Icon(Icons.delete_forever))
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    ));
  }
}
