import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/models/user_model.dart';

class UserDetails extends StatelessWidget {
  final UserModel? user;
  const UserDetails({super.key,this.user});

  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 10,),
           SizedBox(
          height: MediaQuery.of(context).size.height-215,
          child: ListView(
            children: [
              for(int i=0;i<10;i++)
              Card(
                child: ListTile(
                  tileColor: Colors.white,
                  title: Text("1001",style: Theme.of(context).textTheme.bodyMedium,),
                  subtitle: Text("12/3/2024 / Receipt",style: Theme.of(context).textTheme.labelSmall,),
                  trailing: Column(
                    children: [
                       Text("+ 100",style: Theme.of(context).textTheme.labelSmall),
                      Text("₹ 100",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.error),),
                    ],
                  ),
                  
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(color: Colors.white,child: Row(
          spacing: 10,
          children: [
            // PrimaryButton(icon: Icons.calendar_month, onPressed: (){})
            Expanded(child: PrimaryButton(
              borderRadius: 4,
              onPressed: (){},icon: Icons.print,backgroundColor: Colors.white,)),
            Expanded(
              flex: 2,
              child: PrimaryButton(borderRadius: 4, onPressed: (){},text: "Receipt",backgroundColor: Colors.green[800]!,)),
            Expanded(
              flex: 2,
              child: PrimaryButton(borderRadius: 4, onPressed: (){},text: "Payment",backgroundColor: Colors.red[800]!,)),
          ],
        ),)
        ],
      ),
    );
  }
}