import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/const/enums.dart';
import 'package:kanakk_book/custom_widgets/common_data_table.dart';
import 'package:kanakk_book/custom_widgets/common_date_picker.dart';
import 'package:kanakk_book/custom_widgets/common_drop_down.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class UserTransactionEntry extends HookWidget {
  final VoucherType? voucherType;
  const UserTransactionEntry({super.key,this.voucherType});

  @override
  Widget build(BuildContext context) {
    final multipleEntry=useState(false);
    final voucher=useState(voucherType);
    return Scaffold(
      appBar: CustomAppBar(title: "Entry",enableBack: true,trailering: IconButton(icon: Icon(multipleEntry.value?Icons.switch_access_shortcut_add_rounded: Icons.multiple_stop_outlined) ,color: Colors.white, onPressed: () {
        multipleEntry.value=!multipleEntry.value;
        },),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            PrimaryTextfield(hintText: "Amount",prefixIcon:Icon(Icons.money)),
            CommonDropdown(
              prefixIcon: Icons.discount_outlined,
              hint: "Reference", value: null,onChanged: (s){},
            items: ["Sales","diesal","Bucket"],
            ),
            Row(spacing: 10,
              children: [
                Expanded(
                  flex: 2,
                  child: PrimaryButton(onPressed: (){
                    if(voucher.value==VoucherType.payment){
                      voucher.value=VoucherType.receipt;
                    }else{
                      voucher.value=VoucherType.payment;
                    }
                  },
                borderRadius: 3,
                icon:voucher.value==VoucherType.payment?Icons.arrow_forward_rounded: Icons.arrow_back,iconColor: Colors.white,backgroundColor:voucher.value==VoucherType.payment?ColorConstants.redColor: ColorConstants.greenColor,)),
                Expanded(
                  flex: 3,
                  child: CommonDatePicker()),
                if(multipleEntry.value) 
                  Expanded(
                    
                    child:PrimaryButton(onPressed: (){


                    },icon: Icons.add,iconColor: Colors.white,borderRadius: 3,)),
              ],
            ),
            SizedBox(height: 10,),
          if(multipleEntry.value)  SizedBox(
            height: 220,
            child: SingleChildScrollView(
              child: CommonDataTable(
                data: [for(int i=0;i<5;i++){"Type":Icon(Icons.arrow_back,color: Colors.green,),"Date":"12/2/2025", "Reference":"Sales","Amount":"₹ 500"}],
              ),
            ),
          ),
            Spacer(),
            PrimaryButton(onPressed: (){},text: "Save",icon: Icons.save,iconColor: Colors.white,borderRadius: 3,)
          ],
        ),
      ),
    );
  }
}