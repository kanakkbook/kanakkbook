import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class AddUserForm extends StatelessWidget {
  const AddUserForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Add user",),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            PrimaryTextfiled(hintText: "user name",prefixIcon: Icon(Icons.person),),
            PrimaryTextfiled(hintText: "Phone numer",prefixIcon: Icon(Icons.phone),),
           Row(
             children: [
               Expanded(
                 child: Card(color: Colors.white, child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(Icons.male,color: Colors.black,size: 30,),
                 ),),
                 
               ),
               Expanded(
                 child: Card(color: Colors.white, child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(Icons.female,color: Colors.black,size: 30,),
                 ),),
                 
               ),
             ],
           ),
           PrimaryTextfiled(hintText:"email",prefixIcon: Icon(Icons.email),),
           InkWell(onTap: ()async =>   await DatePicker.showSimpleDatePicker(
                context,
                // initialDate: DateTime(2020),
                firstDate: DateTime(2020),
                lastDate: DateTime(2090),
                dateFormat: "dd-MMMM-yyyy",
                locale: DateTimePickerLocale.en_us,
                looping: true,
              ),
             child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 8,),
                    Text("12/12/2023")
                  ],
                ),
              ),
             ),
           ),
            PrimaryTextfiled(hintText:"company",prefixIcon: Icon(Icons.business),),
            PrimaryTextfiled(hintText:"address",prefixIcon: Icon(Icons.home),maxLines: 6,),
            PrimaryButton(text: "Save", onPressed: (){}, width: double.infinity,borderRadius: 12,)
          ],
        ),
      ),
    );
  }
}