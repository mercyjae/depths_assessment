import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_test/airtime.dart';
import 'package:payment_test/data.dart';

class Utility extends StatelessWidget {
  const Utility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold( 
        body: SafeArea(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(children: [
        Container(height: 50,width: 30,
          decoration: BoxDecoration(shape: 
        BoxShape.circle,color: Color.fromARGB(255, 225, 213, 238),
       
         ),
      
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back_ios,color: Color(0xff5A39B7),size: 15,),
          )), 
          SizedBox(width: 80,),
          Text('Airtime & Data',
          style:GoogleFonts.openSans(fontSize: 18,fontWeight: FontWeight.w700),
          )],),
            Container(
              height: 50,
              decoration:   BoxDecoration(color: Color(0xffFAFAFA),
              
               boxShadow: [
                 BoxShadow(
              offset: Offset(0, 20),
              blurRadius: 30,
              
              color:  Colors.black.withOpacity(0.6))
        ],
              borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
               
                  indicator: BoxDecoration(color: Color(0xFF564592),
                    borderRadius: BorderRadius.circular(12)),
                  tabs: [
                  Tab(text: 'Airtime',),
                  Tab(text: 'Data',),
        
                ]),
              ),
              ),
              
              Expanded(child: TabBarView(children: [
                Airtime(),
                Data()
               
              ],
              )
              )
            
          ]),
              ),
        ),),
    );
  }
}