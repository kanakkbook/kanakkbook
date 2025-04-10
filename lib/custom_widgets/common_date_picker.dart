import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/i18n/date_picker_i18n.dart';
import 'package:kanakk_book/const/color_constants.dart';

class CommonDatePicker extends StatelessWidget {
  const CommonDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(onTap: ()async =>   await DatePicker.showSimpleDatePicker(
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
                        Icon(Icons.calendar_month,color: ColorConstants.secondary,),
                        SizedBox(width: 8,),
                        Text("12/12/2023",style: Theme.of(context).textTheme.bodyMedium,)
                      ],
                    ),
                  ),
                 ));
  }
}