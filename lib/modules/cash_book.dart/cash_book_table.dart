import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/custom_app_bar.dart';
import 'package:kanakk_book/custom_widgets/primary_button.dart';
import 'package:kanakk_book/models/user_model.dart';
import 'package:kanakk_book/modules/accounts/add_account.dart';
import 'package:kanakk_book/modules/users_list/user_details.dart';

class CashBookTable extends HookWidget {
  const CashBookTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        enableBack: true,
        title:"Cash Book",trailering:IconButton(onPressed: (){
          Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddAccount(),
                      ));
        }, icon:Icon(Icons.add,color: Colors.white,) ),),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height-100,
            child: SingleChildScrollView(
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
                                Text("12/03/2025",style: Theme.of(context).textTheme.bodyMedium,),
                                Text("01:30 pm",style: Theme.of(context).textTheme.labelSmall,)
                              ],
                            ),
                            Spacer(),
                            Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                 Text("expense"),
                               Text("500",style: Theme.of(context).textTheme.labelSmall),
                              ],
                            )
                           
                          ],
                        ),
                      )
                      
                    ),
                  )
               
              ]),
            ),
          ),
          Container(
            height: 80,
            child: Row(
              children: [
                Expanded(child: PrimaryButton(onPressed: (){},text: "+",backgroundColor: ColorConstants.greenColor,))
              ,Expanded(child: PrimaryButton(onPressed: (){},text: "-",backgroundColor: ColorConstants.redColor,))
              ],
            ),
          )
        ],
        
      ),
    );
  }
}