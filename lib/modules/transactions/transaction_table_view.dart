import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/modules/sales/add_sales.dart';

class TransactionTableView extends StatelessWidget {
  const TransactionTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        enableBack: true,
        title: "Transactions Table",
        trailering: IconButton(
          color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddSales(),
              ),
            );
          },
          icon: Icon(Icons.add),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SizedBox(
              width: 825,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildHeaderCell("Date", 50),
                      _buildHeaderCell("v no", 35),
                      _buildHeaderCell("Details", 500),
                     
                      _buildHeaderCell("Balance", 100),
                    ],
                  ),
                ),
              ),
            ),
            for (int i = 0; i < 10; i++)
              Container(
                width: 825,
                child: ExpansionTile(
                  childrenPadding: EdgeInsets.only(right:  20),
                  showTrailingIcon: false,
                  title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              miniHeader("Nov 28", 50),
                              miniHeader("1001", 50),
                              miniHeader("From", 100),
                              miniHeader("To", 100),
                              miniHeader("Method", 100),
                               miniHeader("Reference", 100),
          
                              miniHeader("Amount", 100),
                              miniHeader("+ \$100", 100,color: Colors.green),
                            ],
                            
                          ),
                  children:[ Padding(
                    padding: const EdgeInsets.symmetric(vertical:  2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Column(
                        children: [
                          for(int i=0;i<5;i++)
                          ...[Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(i%2==0? Icons.arrow_forward:Icons.arrow_back, color:i%2==0? Colors.green:Colors.red))),
                             
                              _buildContentCell("Cash", 100),
                              _buildContentCell("Customer", 100),
                              _buildContentCell("Card", 100),
                              SizedBox(
                            width: 100, // This defines the max width for the entire SizedBox
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.amber[50], // Color around the text
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:  8.0), // Padding around the text
                                    child: Text(
                                      "Sales",
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                  ),
                                  width: null, // Remove fixed width from Container
                                ),
                              ),
                            ),
                          )
                          ,
                              _buildContentCell("+ \$10", 100),
                              _buildContentCell("+ \$100", 100),
                            ],
                            
                          ),
                          SizedBox(width: 800,child: Divider(color: Colors.grey[200],),)]
                        ],
                      ),
                    ),
                  )],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCell(String text, double width) {
    return SizedBox(
      width: width,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.grey[500], fontSize: 15,fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
   Widget miniHeader(String text, double width,{Color? color}) {
    return SizedBox(
      width: width,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color:color?? Colors.black, fontSize: 12,fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
  Widget _buildContentCell(String text, double width) {
    return SizedBox(
      width: width,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ),
    );
  }


}
