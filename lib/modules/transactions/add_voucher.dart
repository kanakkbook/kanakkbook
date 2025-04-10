import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/common_data_table.dart';
import 'package:kanakk_book/custom_widgets/common_date_picker.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class AddVoucher extends StatelessWidget {
  const AddVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
enableBack: true,title: "Vouchers entry"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              children: [
                CommonDatePicker()
                           ,
                           SizedBox(
                            width: 200,
                            child: PrimaryTextfield(hintText: "Voucher Type",prefixIcon: Icon(Icons.shopping_bag_outlined),)),
              ],
            ),
           
            Row(
              children: [
                SizedBox(
                  width: 200,
                  child: PrimaryTextfield(hintText: "From",prefixIcon: Icon(Icons.shopping_bag_outlined),)),
                  SizedBox(
                    width: 200,
                    child: PrimaryTextfield(hintText: "To",prefixIcon: Icon(Icons.attach_money),)),
              ],
            ),
          Row(
              children: [
                SizedBox(
                  width: 200,
                  child: PrimaryTextfield(hintText: "Method",prefixIcon: Icon(Icons.shopping_bag_outlined),)),
                  SizedBox(
                    width: 200,
                    child: PrimaryTextfield(hintText: "Amount",prefixIcon: Icon(Icons.attach_money),)),
              ],
            ),
          
           PrimaryTextfield(hintText: "Reference",prefixIcon: Icon(Icons.attach_money),),
           PrimaryButton(text: "Add", onPressed: (){}, width: double.infinity,borderRadius: 12),
          SizedBox(height: 10,),
          SizedBox(
            height: 220,
            child: SingleChildScrollView(
              child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: 
                      CommonDataTable(
                        data: [for(int i=0;i<5;i++){"Type":Icon(Icons.arrow_back,color: Colors.green,),"To":"Vinod","Method":"Cash","Amount":"500"}],
                      )
                     
                            
                      ),
            ),
          ),
                
              
          Spacer(),
            PrimaryButton(text: "Save", onPressed: (){}, width: double.infinity,borderRadius: 12,backgroundColor: ColorConstants.primary,)
          ],
        ),
      ),
    );
  }
}