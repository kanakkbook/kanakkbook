import 'package:flutter/material.dart';

class UserDetailsGridView extends StatelessWidget {
  const UserDetailsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          );
  }
}