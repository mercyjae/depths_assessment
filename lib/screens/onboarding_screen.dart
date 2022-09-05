import 'package:flutter/material.dart';
import 'package:payment_test/screens/utility_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            PaymentTile(
              image: 'assets/images/onboarding2.png',
              title: 'Make Payments using\nQRCodes and URL ',
              description: 'Send and recieve money from family,\n'
                  'friends and even acquaintances\nseamlessly using QR Codes and URL\npayment systems',
              color1: const Color(0XFF9FA8DA),
              color2: const Color(0xFF1A237E),
            ),
            PaymentTile(
                image: 'assets/images/onboarding1.png',
                title:
                    '      Achieve your financial goals\n      by budgetting wisely',
                description:
                    'Lets help you spend wisely by giving you\nthe superpower'
                    'to create a swift and\ndetailed budget list.\n'
                    'You create the budget, we automate and\nkeep you accountable.',
                color1: const Color(0XFFBBDEFB),
                color2: const Color(0xFF42539E)),
            PaymentTile(
                image: 'assets/images/onboarding3.png',
                title: '   Automate Utility Payments',
                description:
                    'Never go late on any utility payment again\nwith Dashr.\n'
                    'By automating payments, all your utility\nbills get paid off seamless without\nbreaking a sweat',
                color1: const Color(0XFFC5CAE9),
                color2: const Color(0xFF1A237E))
          ],
        ),
      ),
    );
  }
}

class PaymentTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Color color1;
  final Color color2;
  PaymentTile({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.color1,
    required this.color2,
  }) : super(key: key);
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color1, color2],
        ),
      ),
      child: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
            //  color: Colors.blue,
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                //color: Colors.red,
                image: DecorationImage(image: AssetImage(image))),
          ),
          Positioned(
            top: 300,
            left: 15,
            right: 15,
            child: Container(
              height: 340,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.white),
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                        fontSize: 18,
                          fontWeight: FontWeight.w600,
                          height: 1.5),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(description,
                      style: const TextStyle(
                          color: Colors.white, height: 1.5, fontSize: 15)),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.white, width: 2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            primary: Colors.black),
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> 
                            const UtilityScreen()));
                        },
                        child: const Text('Get Started')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                   SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    onDotClicked: (index) {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    effect: CustomizableEffect(
                      activeDotDecoration: DotDecoration(
                        width: 8,
                        height: 8,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      spacing: 3,
                      dotDecoration: DotDecoration(
                        width: 5,
                        height: 5,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
