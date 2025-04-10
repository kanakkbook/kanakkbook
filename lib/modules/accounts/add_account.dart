import 'package:flutter/material.dart';
import 'package:kanakk_book/custom_widgets/common_date_picker.dart';
import 'package:kanakk_book/custom_widgets/common_drop_down.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class AddAccount extends StatelessWidget {
  const AddAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
enableBack: true,title: "Add Account",trailering: Icon(Icons.person_add_alt_1,color: Colors.white,),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            PrimaryTextfield(hintText: "user name",prefixIcon: Icon(Icons.person),),
            PrimaryTextfield(hintText: "Phone numer",prefixIcon: Icon(Icons.phone),),
            CommonDropdown(value: "", hint: "Category",
            items: ["Cash","Wallet/UPI","Current Account","Savings Account","Salary account","personal account","Counter","local purchase"],
             onChanged: (s){}),
           
            CommonDatePicker(),
            PrimaryTextfield(hintText:"opening amount",prefixIcon: Icon(Icons.business),),
           Spacer(),
            PrimaryButton(text: "Save", onPressed: (){}, width: double.infinity,borderRadius: 12,)
          ],
        ),
      ),
    );
  }
}