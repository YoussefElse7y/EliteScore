import 'package:flutter/material.dart';
import 'package:football_app/core/theme/colors.dart';

class SomethingWentWrongScreen extends StatelessWidget {
  const SomethingWentWrongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.error , size: 100 , color: AppColors.redColor,),
          Center(child: Text('Something went wrong' , style: TextStyle(fontSize: 20 ,color: AppColors.redColor ))),
        ],
      ),
    );
  }
}
