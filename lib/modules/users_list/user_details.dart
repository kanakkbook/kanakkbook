import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/const/enums.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/models/user_model.dart';
import 'package:kanakk_book/modules/users_list/elements.dart/summary_card.dart';
import 'package:kanakk_book/modules/users_list/user_details_grid_view.dart';
import 'package:kanakk_book/modules/users_list/user_details_table_view.dart';
import 'package:kanakk_book/modules/users_list/user_transaction_entry.dart';
import 'package:kanakk_book/modules/users_list/view_model/users_view_model.dart';
import 'package:provider/provider.dart';

class UserDetails extends HookWidget {
  final UserModel? user;
  const UserDetails({super.key,this.user});

  @override
  Widget build(BuildContext context) {
    final view=useState(ViewMode.table_view);
    return  Scaffold(
      appBar: CustomAppBar(
        enableBack: true,
        title: user?.userName??"",trailering:IconButton(onPressed: (){}, icon:Icon(Icons.call,color: Colors.white,) ),),
      body: Column(
        children: [
          Container(
            color: ColorConstants.tertiary,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Row(
                  children: [Text("Receipt",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600,color: Colors.black),),Spacer(),Text("+ 400",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600,color: Colors.green[800]))],
                ),
                Row(
                  children: [Text("Payment",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600,color: Colors.black)),Spacer(),Text("- 500",style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w600,color: Colors.red[800]))],
                ),
                SizedBox(height: 8,),
                Divider(height: .5,),
                SizedBox(height: 5,),
                Row(
                  children: [Text("you will get",style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600,color: Colors.black)),Spacer(),Text("₹100",style: Theme.of(context).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w600,color: Colors.green[800]))],
                ),
              ],),
            ),
          ),
          SizedBox(height: 5,),
         
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 5,
              children: [
                 ...context.read<UsersViewModel>().summaryDate.map((e)=>SummaryCard(title: e.title,subTitle: "₹${e.subtitle}",))
                 
              ],
            ),
          ),
          
          SizedBox(height: 10,),
          SizedBox(
          height: MediaQuery.of(context).size.height-272,
          child:view.value==ViewMode.table_view? UserDetailsTableView():UserDetailsGridView()
        ),
        SizedBox(height: 10,),
        Container(color: Colors.white,child: Row(
          spacing: 10,
          children: [
            // PrimaryButton(icon: Icons.calendar_month, onPressed: (){})
            Expanded(child: PrimaryButton(
              borderRadius: 4,
              onPressed: (){},icon: Icons.print,backgroundColor: Colors.white,)),
            Expanded(child: PrimaryButton(
              borderRadius: 4,
              onPressed: (){
                view.value=view.value==ViewMode.grid_view?ViewMode.table_view:ViewMode.grid_view;
              },icon: Icons.grid_view_outlined,backgroundColor: Colors.white,)),
            Expanded(
              flex: 2,
              child: PrimaryButton(borderRadius: 4, onPressed: (){
                Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserTransactionEntry(voucherType: VoucherType.receipt,),
              ),
            );
              },text: "Receipt",backgroundColor: ColorConstants.greenColor,)),
            Expanded(
              flex: 2,
              child: PrimaryButton(borderRadius: 4, onPressed: (){},text: "Payment",backgroundColor: ColorConstants.redColor,)),
          ],
        ),)
        ],
      ),
    );
  }
}