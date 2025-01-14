import 'package:flutter/material.dart';
import 'package:kanakk_book/const/color_constants.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  15.0,vertical: 30),
      child: SizedBox(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.arrow_back_ios_sharp,color: ColorConstants.whiteOpacity,),
            Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.whiteOpacity,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.apartment,color:ColorConstants.secondary,),
                  ),
                ),
                SizedBox(height: 5,),

                Text("ABC COMPANY",textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
                Text("star enterprenice",textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white,fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}