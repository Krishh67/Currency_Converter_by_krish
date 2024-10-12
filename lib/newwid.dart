import 'package:flutter/material.dart';

class Newwid extends StatefulWidget{
  const Newwid({super.key});

  @override
  State <Newwid> createState() => _Ccmstate();
}

class _Ccmstate extends State<Newwid>{
  double x = 0;

   OutlineInputBorder bborder(){
    return(
    const OutlineInputBorder (
      borderSide : BorderSide(
        width: 2.0
      ),
      borderRadius :  BorderRadius.all(Radius.circular(4.0)),
      gapPadding : 4.0,
   
    ));
  } 
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
  
 
      
    
    
    return Scaffold(

      //app bar
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const Icon(
          Icons.adb_sharp,
        color: Colors.white),
        scrolledUnderElevation: 3,
        backgroundColor:  const Color.fromARGB(255, 43, 41, 41),
        elevation: 1,
        title: const Text(
        "Welcome to \nCurrency Converter APP",
        style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: const[
          IconTheme(data: IconThemeData(color: Colors.white), child: Row(
            children: [
          Icon(Icons.accessible_forward_rounded),
          Icon(Icons.account_circle_sharp)],
          ))
          
        
        ],
      ),

        body: Center(
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
                    
             TextField(                                                //this is text field
               controller: textEditingController,
               keyboardType: TextInputType.number,
                 style: const TextStyle(
                     color: Color.fromRGBO(255, 255, 1, 0.5), fontSize: 30),
                 decoration: InputDecoration(
                     hintText: " Enter Amount in dollar ",
                     hintStyle: const TextStyle(
                       fontSize: 20,
                       color: Color.fromARGB(255, 255, 255, 255),
                     ),
                     suffix : const Icon(Icons.monetization_on,size: 35,),
                     iconColor:const  Color.fromARGB(255, 255, 255, 255),
                     fillColor: const Color.fromRGBO(201, 62, 41, 0.498),
                     filled: true,
                     
                     focusedBorder: bborder(),
                     enabledBorder: bborder())
             
                 ),

                 const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                    x=double.parse(textEditingController.text) * 81;
                    setState(() {});
                    //print(x);
                    
                  
                },
                style: TextButton.styleFrom(
                  elevation: (15),
                  backgroundColor: (Colors.black),
                  foregroundColor: const Color.fromARGB(255, 215, 240, 27),
                  minimumSize: const Size(double.infinity, 50),
                  shape: const RoundedRectangleBorder(),
                ),
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
        
  
} }
