import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  String _groupValue = '';
  String _getValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            const Text('Select Network'),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
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
            const SizedBox(
              height: 20,
            ),
            const Text('Select account'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Select account',
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(' Choose a data bundle'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Select Data Plan',
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(' Choose a Recepient'),
            const SizedBox(
              height: 5,
            ),
            ListTile(
              title: const Text(
                "My Number",
              ),
              leading: Radio(
                  value: 'Option1',
                  groupValue: _groupValue,
                  onChanged: (value) {
                    setState(() {
                      _groupValue = value as String;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "My contact",
              ),
              leading: Radio(
                  value: 'Option1',
                  groupValue: _getValue,
                  onChanged: (value) {
                    setState(() {
                      _getValue = value as String;
                    });
                  }),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 70,
                    width: 55,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/cloud.png')),
                        border: Border.all(
                          width: 3,
                          color: const Color(0xff5A39B7),
                        ),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  contactTile(title: 'Daniel\n Oladunjoye'),
                  const SizedBox(
                    width: 8,
                  ),
                  contactTile(title: 'Cynthia\n Obianuji'),
                  const SizedBox(
                    width: 8,
                  ),
                  contactTile(title: 'Destiny\n Okpe'),
                  const SizedBox(
                    width: 8,
                  ),
                  contactTile(title: 'Damilola\n Raji'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    primary: const Color(0xFF5A39B7),
                  ),
                  onPressed: () {},
                  child: const Text('Pay Now')),
            )
          ]),
        ),
      ),
    );
  }

  Widget contactTile({required String title}) {
    return Stack(
      children: [
        Container(
          height: 70,
          width: 55,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/person.png')),
              border: Border.all(
                width: 3,
                color: const Color(0xff5A39B7),
              ),
              borderRadius: BorderRadius.circular(25)),
        ),
        Positioned(
          left: 35,
          child: Image.asset('assets/images/clouds.png'),
        ),
      ],
    );
  }

  Widget networkTile({required String image}) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.grey)),
      child: Image.asset(image),
    );
  }
}
