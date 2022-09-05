import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_test/widgets/airtime.dart';
import 'package:payment_test/widgets/data.dart';

class UtilityScreen extends StatelessWidget {
  const UtilityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color:  Color.fromARGB(255, 225, 213, 238),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color:  Color(0xff5A39B7),
                          size: 15,
                        ),
                      )),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    'Airtime & Data',
                    style: GoogleFonts.openSans(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA),
                    // boxShadow: [
                    //   BoxShadow(
                    //       offset: const Offset(0, 20),
                    //       blurRadius: 30,
                    //       color: Colors.black.withOpacity(0.6))
                    // ],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicator: BoxDecoration(
                          color: const Color(0xFF564592),
                          borderRadius: BorderRadius.circular(12)),
                      tabs:const [
                         Tab(
                          text: 'Airtime',
                        ),
                         Tab(
                          text: 'Data',
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  const Airtime(), Data()],
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
