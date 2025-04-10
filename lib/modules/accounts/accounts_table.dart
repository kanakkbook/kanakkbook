import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kanakk_book/const/enums.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/models/user_model.dart';
import 'package:kanakk_book/modules/accounts/add_account.dart';
import 'package:kanakk_book/modules/users_list/user_details.dart';

class AccountsTable extends HookWidget {
  const AccountsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        enableBack: true,
        title:"Accounts",trailering:IconButton(onPressed: (){
          Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddAccount(),
                      ));
        }, icon:Icon(Icons.add,color: Colors.white,) ),),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
          
            for(int i=0;i<10;i++)
            InkWell(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserDetails(user: UserModel(
                          userName: "SBI Bank Account"
                        ),),
                      ));
              },
              child: Card(
              
                child: 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rajeev",style: Theme.of(context).textTheme.bodyMedium,),
                          Text("235346546546434",style: Theme.of(context).textTheme.labelSmall,)
                        ],
                      ),
                      Spacer(),
                      Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Text("Company Account"),
                         Text("opening amount: + 100",style: Theme.of(context).textTheme.labelSmall),
                        Text("balance: ₹ 100",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.error),),
                        ],
                      )
                     
                    ],
                  ),
                )
                
              ),
            )
         
        ]),
      ),
    );
  }
}