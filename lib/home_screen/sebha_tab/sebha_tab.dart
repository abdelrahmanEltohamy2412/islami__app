

import 'package:flutter/material.dart';
import 'package:isami_app/mytheme.dart';

class sebhaTap extends StatefulWidget {
   sebhaTap({super.key});

  @override
  State<sebhaTap> createState() => _sebhaTapState();
}

class _sebhaTapState extends State<sebhaTap> {
  List<String> azkar = [
    'سبحان الله','الحمدلله ','الله اكبر'
  ];

  int index = 0;

  int counter = 0 ;
  double turns = 0 ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
        Expanded(flex: 2,
          child: Center(child: AnimatedRotation(turns: turns,
          duration: const Duration(seconds: 1),
          child: Image.asset('assets/images/sbhalogo.png'))),),

         Expanded(flex: 3,child: Column(children: [
          Text('عدد التسبيحات ',style: TextStyle(
            fontWeight: FontWeight.w500,
            color: MyTheme.primaryLight,
            fontSize: 25
          ),

          ),
           const SizedBox(height:26 ,),
           Container(padding: const EdgeInsets.all(15),
             decoration: BoxDecoration(
               color: MyTheme.primaryLight,
               borderRadius: BorderRadius.circular(25)
             ),

             child:  Text('$counter',
                style: const TextStyle( fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 25),
             ),
           ),
           const SizedBox(height: 22,),
           InkWell(onTap: (){
                counter++;
                turns+=.03333;
                if(counter>30){
                  counter=0;
                  index++;
                  if(index == azkar.length){
                    index= 0;
                  }
                }
                setState(() {

                });
           },
             child: Container(padding: const EdgeInsets.all(10),
               decoration: BoxDecoration(
                 color: MyTheme.primaryLight, borderRadius: BorderRadius.circular(25),
               ),
               child: Text(azkar[index],style: const TextStyle(
                 color: Colors.white,
                 fontSize: 25,
                 fontWeight: FontWeight.bold
               ),),
             ),
           )

        ],),)

      ],),
    );
  }
}
