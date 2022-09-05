import 'package:flutter/material.dart';

class Airtime extends StatefulWidget {
  const Airtime({Key? key}) : super(key: key);

  @override
  State<Airtime> createState() => _AirtimeState();
}

class _AirtimeState extends State<Airtime> {
  String _groupValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(' Choose a Recepient'),
            const SizedBox(
              height: 10,
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
                  groupValue: _groupValue,
                  onChanged: (value) {
                    setState(() {
                      _groupValue = value as String;
                    });
                  }),
            ),
            ListTile(
              title: const Text(
                "New Number",
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
            const SizedBox(
              height: 20,
            ),
            const Text('Enter Phone Number'),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      primary: const Color(0xFF5A39B7)),
                  onPressed: () {},
                  child: const Text('Pay Now')),
            )
          ]),
        ),
      ),
    );
  }

  Widget networkTile({required String image}) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 80,
      width: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2, color: Colors.grey)),
      child: Image.asset(image),
    );
  }
}
