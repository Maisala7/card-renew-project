

import 'package:card_renewal/app_screens/enter_data.dart';
import 'package:card_renewal/app_screens/notification.dart';
import 'package:card_renewal/app_screens/sign_up.dart';
import 'package:flutter/material.dart';


class main_screen extends StatefulWidget{
    const main_screen(this.language, {super.key});
  final int language;


  @override
  State<StatefulWidget> createState() => main_screenState(language);
}
class main_screenState extends State<main_screen> {
  final int language ;

  main_screenState(this.language);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

    
   return Scaffold(
     appBar:AppBar(
      title: Center(child: Text('نظام تجديد البطاقه القوميه',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
      )),
      backgroundColor:Color.fromARGB(255, 11, 35, 55),
       
        ),
     
      //background color
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
             
              Color.fromARGB(255, 206, 214, 226),
              Color.fromARGB(255, 102, 145, 180),
            ],
          ),
        ),
       child:Center(
         child: Padding(
           padding: const EdgeInsets.only(top: 150),
           child: ListView(children:[
             CircleAvatar(
             radius: screenWidth/3.8,
             child:  getImageAsset(),                   
             backgroundColor: Color.fromARGB(255, 206, 214, 226),
            ),
           
           Row(
             children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ElevatedButton(
                                     style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                        const  Color.fromARGB(255, 11, 35, 55)),
                                      //end coloring
                                      //start bordering
                                      shape:
                                          MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      )) ),
                                     
                          child: Text(
                            'Renew request',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          
                            onPressed: () {
                               Navigator.push(context, MaterialPageRoute(builder: (context){
                                 return  Enter_data(language);
                            }));
                              
                              
                              
                            },
                           ),
                        ),
                      ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                      style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                                const  Color.fromARGB(255, 11, 35, 55)),
                              //end coloring
                              //start bordering
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              )) ),
                      
                  child: Text(
                    'your card ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return  notf(language);
                    }));
                      
                      
                      
                    },
                   ),
                ),
              ),
             ]  )
               
            ] ),
         ),
       )
   ));
        
             
       
       
   
        }}
 Widget getImageAsset(){
  AssetImage assetimage= const AssetImage('images/im.jpg.jpg');
  Image image=Image(image: assetimage,width: 150.0,height: 150.0,);

  return ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: image,
                  clipBehavior: Clip.hardEdge,
                  
                );
 }