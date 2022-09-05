import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Data extends StatefulWidget {
   Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
 String _groupValue ='';
 String _getValue ='';

  @override
  Widget build(BuildContext context) {

   return Scaffold(body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              height: 10,
            ),
                Text('Select Network'),
                 SizedBox(
              height: 10,
            ),
                SizedBox(height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                    children: [
                      networkTile(image: 'assets/images/mtn.png'),
                       networkTile(image: 'assets/images/glo.png'),
                  networkTile(image: 'assets/images/mobile.png'),
                  networkTile(image: 'assets/images/airtel.png')
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text('Select account'),
                SizedBox(height: 10,),
                TextField(decoration: 
                InputDecoration(hintText: 'Select account',
                suffixIcon: Icon(Icons.keyboard_arrow_down),
                border: OutlineInputBorder(borderRadius:
                 BorderRadius.circular(10))),
                ),
                SizedBox(height: 20,),
               
                 Text(' Choose a data bundle'),
                SizedBox(height: 10,),
                TextField(decoration: 
                InputDecoration(hintText: 'Select Data Plan',
                suffixIcon: Icon(Icons.keyboard_arrow_down),
                border: OutlineInputBorder(borderRadius:
                 BorderRadius.circular(10))),
                ),
                SizedBox(height: 20,),
               
                 Text(' Choose a Recepient'),
                SizedBox(height: 5,),
                ListTile(title: Text("My Number",),
                  leading:  Radio(
                        value: 'Option1',
                        groupValue: _groupValue,
                        onChanged: (value) {
                            setState(() {
                              _groupValue = value as String;
                            });
                         }
                      ),
                ),
                                  ListTile(title: Text("My contact",),
                                    leading: Radio(
                                   value: 'Option1',
                                    groupValue: _getValue,
                                    onChanged: (value) {
                                         setState(() {
                                           _getValue = value as String;
                                                          });
                                      }
                                                    ),
                                  ),
                           SizedBox(height: 50,
                             child: ListView(scrollDirection: Axis.horizontal,
                               children: [
                                 Container(height: 60,width: 50,
                                 decoration: BoxDecoration(image:
                                  DecorationImage(image: AssetImage('assets/images/cloud.png')),
                                  border: Border.all(width: 3,
                                 color: Color(0xff5A39B7),),
                                 borderRadius: BorderRadius.circular(25)),
                                                
                                                  
                                  ),
                                   contactTile(title: 'Daniel\n Oladunjoye'),
                                   SizedBox(width: 3,),
                                   contactTile(title: 'Cynthia\n Obianuji'),
                                    SizedBox(width: 5,),
                                   contactTile(title: 'Destiny\n Okpe'),
                                    SizedBox(width: 5,),
                                   contactTile(title: 'Damilola\n Raji'),
                               ],
                             ),
                           ),
                            
                                SizedBox(height: 20,),
                   SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: Color(0xFF5A39B7),),
                  onPressed: () {},
                  child: Text('Pay Now')),
            )
                
               
    
        ]),
      ),
    ),);
  }

  Widget contactTile({required String title}) {
    return Column(
      children: [
        SizedBox(height: 50,
          child: Stack(
                          children: [
                          Container(height: 60,width: 60,
                               decoration: BoxDecoration(image:
                                DecorationImage(image: AssetImage('assets/images/person.png')),
                                border: Border.all(width: 3,
                               color: Color(0xff5A39B7),),
                               borderRadius: BorderRadius.circular(25)),
                                ),
                                Positioned(left: 40,
                                  child:Image.asset('assets/images/clouds.png'),
                                  
                                                    ),
                                                  
                                         ],
                                       ),
        ),
                                     Text(title)
      ],
    );
  }

  Widget networkTile({required String image}) {
    return Container(margin: EdgeInsets.all(10),
      height: 70,width: 70,
            decoration:
             BoxDecoration(borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2,color: Colors.grey)),
              child: Image.asset(image),);
  }
}