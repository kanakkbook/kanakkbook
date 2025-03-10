import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class AddSales extends StatelessWidget {
  const AddSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
enableBack: true,title: "Sales entry"),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            InkWell(onTap: ()async =>   await DatePicker.showSimpleDatePicker(
                context,
                 initialDate: DateTime.now(),
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
            PrimaryTextfield(hintText: "₹ sale",prefixIcon: Icon(Icons.shopping_bag_outlined),),
           PrimaryTextfield(hintText: "₹ income",prefixIcon: Icon(Icons.attach_money),),
           PrimaryTextfield(hintText: "Customer",prefixIcon: Icon(Icons.attach_money),),
          Spacer(),
            PrimaryButton(text: "Save", onPressed: (){}, width: double.infinity,borderRadius: 12,)
          ],
        ),
      ),
    );
  }
}