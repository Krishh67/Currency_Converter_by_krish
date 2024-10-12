import 'package:flutter/cupertino.dart';

class Ioskelie extends StatefulWidget {
  const Ioskelie({super.key});

  @override
  State<Ioskelie> createState() => _IoskelieState();
}

class _IoskelieState extends State<Ioskelie> {
  double x = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {




    return CupertinoPageScaffold(
      
      //app bar
      
      backgroundColor: CupertinoColors.activeBlue,
       navigationBar : const CupertinoNavigationBar(
        leading: Icon(
          CupertinoIcons.gear_alt,
        color: CupertinoColors.white),
        //scrolledUnderElevation: 3,
        backgroundColor:   Color.fromARGB(255, 43, 41, 41),
        //elevation: 1,
        middle:  Text(
        "Welcome to \nCurrency Converter APP",
        style: TextStyle(color: CupertinoColors.white)),
        
       
          
        
        
      ),

         child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
             Text(" ${x.toStringAsFixed(2)} Rs.",
                style: const TextStyle(
                    color: Color.fromRGBO(10, 10, 10, 1),
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
                    
             CupertinoTextField(                                                //this is text field
               controller: textEditingController,
               keyboardType: TextInputType.number,
                 style: const TextStyle(
                     color: Color.fromRGBO(255, 255, 1, 0.5), fontSize: 30),
                 decoration:  BoxDecoration(
                     border: Border.all(),
                     borderRadius: BorderRadius.circular(5)

                 )
                 ),

                 const SizedBox(height: 10),
            CupertinoButton(
                onPressed: () {
                    x=double.parse(textEditingController.text) * 81;
                    setState(() {});
                    //print(x);
                    
                  
                },
                
            child: const Text(
              "CONVERT",
              style: TextStyle(
                  //color: Color.fromRGBO(54, 243, 33, 1),
                  fontSize: 20),
                            ),

                    ),
                    ]
                  ),
          )
      
      
      )
        );


    
  }
}