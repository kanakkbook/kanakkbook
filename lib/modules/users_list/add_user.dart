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
      appBar: CustomAppBar(
enableBack: true,title: "Add user",trailering: Icon(Icons.person_add_alt_1,color: Colors.white,),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            PrimaryTextfield(hintText: "user name",prefixIcon: Icon(Icons.person),),
            PrimaryTextfield(hintText: "Phone numer",prefixIcon: Icon(Icons.phone),),
           
           Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Text(" Gender",style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 5,),
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
             ],
           ),
           PrimaryTextfield(hintText:"email",prefixIcon: Icon(Icons.email),),
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
                    Text("12/12/2023",style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
              ),
             ),
           ),
            PrimaryTextfield(hintText:"company",prefixIcon: Icon(Icons.business),),
            PrimaryTextfield(hintText:"address",prefixIcon: Icon(Icons.home),maxLines: 6,),
            PrimaryButton(text: "Save", onPressed: (){}, width: double.infinity,borderRadius: 12,)
          ],
        ),
      ),
    );
  }
}