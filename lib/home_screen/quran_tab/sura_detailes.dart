
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isami_app/mytheme.dart';

import 'itemsuradetaiilsscren.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'sura_details';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> versus = [];


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if(versus.isEmpty){
      loadFile(args.index);
    }

    return
      Stack(children: [
      Image.asset(
        'assets/images/background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme
                .of(context)
                .textTheme
                .titleLarge,
          ),
        ),
        body:versus.isEmpty?
           Center(child:   CircularProgressIndicator(color: MyTheme.primaryLight,),

          )
            :
        Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height*0.09,
            horizontal: MediaQuery.of(context).size.width*0.05,
          ),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
            return ItemSuraDetails(name: versus[index], index: index,);
          }, itemCount: versus.length, separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  thickness: 1,
                  color: MyTheme.primaryLight,
                );
          },),
        ),

      ),

    ]);
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    versus =lines;
    setState(() {

    });
  }
}



class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
