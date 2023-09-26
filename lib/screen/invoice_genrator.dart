import 'package:flutter/material.dart';
import 'package:invoice_app/uttils/global.dart';

class Invoicegenrator extends StatefulWidget {
  const Invoicegenrator({super.key});

  @override
  State<Invoicegenrator> createState() => _InvoicegenratorState();
}

class _InvoicegenratorState extends State<Invoicegenrator> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtInvoiceno = TextEditingController();
  TextEditingController txtProductName = TextEditingController();
  TextEditingController txtProductType = TextEditingController();
  TextEditingController txtPrices = TextEditingController();
  TextEditingController txtTotal = TextEditingController();
  TextEditingController txtquantitiy = TextEditingController();

  int? total = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Invoice Generator",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: Icon(Icons.picture_as_pdf)),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  controller: txtname,
                  decoration: InputDecoration(
                      label: Text(
                    " Choose Customer Name - ",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtInvoiceno,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text(
                    "Invoice No ",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtProductName,
                  decoration: InputDecoration(
                      label: Text(
                    " Product Name  ",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: TextField(
                        controller: txtquantitiy,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            label: Text(
                          "Quantity",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 180,
                      child: TextField(
                        controller: txtPrices,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text(
                            "Price",
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Map m1 = {
                        "name": txtname.text,
                        "invoice": txtInvoiceno.text,
                        "pname": txtProductName.text,
                        "ptype": txtProductType.text,
                        "quantity": txtquantitiy.text,
                        "price": txtPrices.text,
                        "total": txtTotal.text,
                      };
                      Global.g1.Invoicelist.addAll([m1]);

                      Navigator.pop(
                        context,
                      );
                      setState(() {
                        total = int.parse(txtquantitiy.text) *
                            int.parse(txtPrices.text);
                      });
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey.shade400,
                ),
                Text(
                  "Total Payable : ${total}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                // FloatingActionButton(onPressed: (){
                //   Navigator.pushNamed(context, '/').then((value) {
                //
                //   }
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
