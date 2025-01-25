import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
import 'package:kanakk_book/custom_widgets/primary_textfiled.dart';

class UsersCommonPage extends StatelessWidget {
  const UsersCommonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical:  8.0,horizontal: 3),
          child: PrimaryTextfiled(prefixIcon:Icon(Icons.search) ,hintText: "Search",),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height-215,
          child: ListView(
            children: [
              for(int i=0;i<10;i++)
              Card(
                child: ListTile(
                  tileColor: Colors.white,
                  title: Text("Ramuuuu",style: Theme.of(context).textTheme.bodyMedium,),
                  subtitle: Text("374578734238",style: Theme.of(context).textTheme.labelSmall,),
                  trailing: Text("₹ 100",style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.error),),
                  leading: CircleAvatar(
                    backgroundColor: ColorConstants.secondary,
                    child: Text("R",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white,fontWeight: FontWeight.w600),),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}