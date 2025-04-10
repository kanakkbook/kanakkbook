import 'package:flutter/material.dart';

class SummaryCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const SummaryCard({super.key,this.title,this.subTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 60,width: 80,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            spacing: 5,
            children: [
              Text(title??"",style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.black),)
              ,Text(subTitle??"",style: Theme.of(context).textTheme.labelSmall,)
            ],
          ),
        ),
      ),
    );
  }
}