import 'dart:ffi';
// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:opay/SERVICES/utilities.dart';
// import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Opay(),
      home: OpayHome(),
    );
  }
}

// ignore: camel_case_types
class Opay extends StatefulWidget {
  const Opay({super.key});

  @override
  State<Opay> createState() => _OpayState();
}

// ignore: camel_case_types
class _OpayState extends State<Opay> {
  TextEditingController digitController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    digitController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    'assets/Screenshot_2024-04-25_at_20.52.11-removebg-preview.png',
                    width: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   width: 100,
                  //   height: 100,
                  //   decoration: const BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: Colors.red,
                  //     image: DecorationImage(
                  //       image: AssetImage('assets/profile.jpg'),
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(height: 20),
                  // ClipRRect(
                  //   borderRadius: BorderRadius.circular(100),
                  //   child: Container(
                  //     height: 95,
                  //     width: 70,
                  //     // color: Colors.red,
                  //     child: Image.asset(
                  //       'assets/profile.jpg',
                  //       width: 100,
                  //       // height: ,
                  //     ),
                  //   ),
                  // ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  const SizedBox(height: 30),
                  const Text('Max615(810***901)',
                      style: TextStyle(fontSize: 17)),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 65,
                    child: TextFormField(
                      controller: digitController,
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      maxLines: 1,
                      decoration: const InputDecoration(
                          counter: SizedBox.shrink(),
                          filled: true,
                          fillColor: Color.fromARGB(33, 172, 163, 163),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.51,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          // label: Text("6-digit Pin")),
                          hintText: "Enter the 6-digit Password",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(140, 158, 158, 158),
                              fontWeight: FontWeight.w500),
                          suffixIcon: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 20,
                          )),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 320,
                    height: 55,
                    child: TextButton(
                        onPressed: () {
                          print(digitController.text);
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(80, 0, 176, 41))),
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 19),
                        )),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/cbn.png',
                width: 15,
              ),
              const Text(
                '  Licensed by the ',
                style: TextStyle(fontSize: 10),
              ),
              const Text(
                'CBN',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              const Text(
                ' and insured by the  ',
                style: TextStyle(fontSize: 10),
              ),
              Image.asset(
                'assets/ndic-logo.png',
                width: 35,
              )
            ],
          )
        ],
      ),
    );
  }
}

class OpayHome extends StatefulWidget {
  const OpayHome({super.key});

  @override
  State<OpayHome> createState() => _OpayHomeState();
}

class _OpayHomeState extends State<OpayHome> {
  int amount = 0;
  bool private = true;
  // Utilities tools = Utilities();
  List mylist = [
    {'title': 'Home', "icon": Icons.home},
    {'title': Utilities().getSomething(), 'icon': Icons.account_box_sharp}
  ];

  // Map ob = {};

  // dosometi() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 239, 239),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/profile.jpg'),
                            ),
                            Text(
                              'Hi, Max615',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 140,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              iconSize: 25,
                              icon: const Icon(Icons.headset_mic_rounded),
                            ),
                            SizedBox(
                              width: 45,
                              child: TextButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'icons/scanner.png',
                                  width: 25,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 47,
                              child: TextButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'icons/icons8-bell-64.png',
                                  width: 28,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Card(
                  //   shape: Border.all(width: 1),
                  //   elevation: 10,
                  //   color: const Color.fromARGB(255, 86, 184, 90),
                  //   child: const Text(
                  //     "Hey",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  Container(
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color.fromARGB(153, 15, 166, 43),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: ,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // mainAxisAlignment:
                                // MainAxisAlignment.spaceAround,
                                children: [
                                  Image.asset(
                                    'icons/secure.png',
                                    width: 20,
                                  ),
                                  const Text(
                                    ' Available Balance ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  const Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  // IconButton(
                                  //   onPressed: () {
                                  //     setState(() {
                                  //       // if (amount >= 10) {
                                  //       //   amount = 0;
                                  //       // } else {
                                  //       //   amount += 1;
                                  //       // }
                                  //       amount >= 10 ? amount = 0 : amount += 1;
                                  //     });
                                  //   },
                                  //   icon: const Icon(
                                  //     Icons.remove_red_eye,
                                  //     color: Colors.white,
                                  //     size: 17,
                                  //   ),
                                  // ),
                                  // const Icon(
                                  //   Icons.remove_red_eye,
                                  //   color: Colors.white,
                                  //   size: 17,
                                  // ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '₦',
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '$amount',
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'Transaction History  >',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 130,
                                  height: 40,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: const Text(
                                        '+Add Money',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 13),
                                        maxLines: 1,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    // height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color.fromARGB(255, 249, 249, 249),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(41, 132, 234, 197),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'icons/icons8-user-location-50.png',
                                    width: 35,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'To OPay',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(41, 132, 234, 197),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.account_balance_sharp,
                                      size: 35,
                                      color: Color.fromRGBO(76, 175, 80, 1),
                                    )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'To Bank',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(41, 132, 234, 197),
                                    borderRadius: BorderRadius.circular(10)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Image.asset(
                                      'icons/withdraw.png',
                                      width: 35,
                                    )),
                              ),
                              const SizedBox(
                                height: 11,
                              ),
                              const Text(
                                'Withdraw',
                                style: TextStyle(fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    // height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: const Color.fromARGB(255, 249, 249, 249),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 132, 234, 197),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'icons/icons8-user-location-50.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Airtime',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 132, 234, 197),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.account_balance_sharp,
                                          size: 30,
                                          color: Color.fromRGBO(76, 175, 80, 1),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Data',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              41, 132, 234, 197),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'icons/withdraw.png',
                                          width: 35,
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  const Text(
                                    'Betting',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              41, 132, 234, 197),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'icons/withdraw.png',
                                          width: 35,
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  const Text(
                                    'TV',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 132, 234, 197),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'icons/icons8-user-location-50.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'OWealth',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 132, 234, 197),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.account_balance_sharp,
                                          size: 30,
                                          color: Color.fromRGBO(76, 175, 80, 1),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Electricity',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            41, 132, 234, 197),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.account_balance_sharp,
                                          size: 30,
                                          color: Color.fromRGBO(76, 175, 80, 1),
                                        )),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Play4aChild',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              41, 132, 234, 197),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'icons/withdraw.png',
                                          width: 30,
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  const Text(
                                    'More',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    width: 600,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 249, 249, 249)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(41, 132, 234, 197),
                            radius: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.speaker_notes_outlined)),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Have a problem?',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Text(
                                'Speak with our customer care',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      ...mylist.map((el) {
                        return Text(el['title']);
                      })
                    ],
                  )
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.all(0),

              height: 65,
              width: 900,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255)),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon(Icons.home_rounded),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.home_filled,
                            size: 25,
                            color: Color.fromARGB(255, 83, 181, 86),
                          ),
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 83, 181, 86)),
                        ),
                        // Expanded(child: T)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon(Icons.home_rounded),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.diamond_outlined,
                            size: 25,
                            color: Color.fromARGB(255, 194, 194, 194),
                          ),
                        ),
                        const Text(
                          'Rewards',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 194, 194, 194)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon(Icons.home_rounded),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.graphic_eq_rounded,
                            size: 25,
                            color: Color.fromARGB(255, 194, 194, 194),
                          ),
                        ),
                        const Text(
                          'Finance',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 194, 194, 194)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon(Icons.home_rounded),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.card_travel_outlined,
                            size: 25,
                            color: Color.fromARGB(255, 194, 194, 194),
                          ),
                        ),
                        const Text(
                          'Cards',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 194, 194, 194)),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Icon(Icons.home_rounded),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 25,
                            color: Color.fromARGB(255, 194, 194, 194),
                          ),
                        ),
                        const Text(
                          'Me',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 194, 194, 194)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // if (amount >= 10) {
            //   amount = 0;
            // } else {
            //   amount += 1;
            // }
            amount >= 10 ? amount = 0 : amount += 1;
            // private == true ? amount = '*' : amount;
          });
        },
        shape: const CircleBorder(),
        elevation: 20,
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

// currency(context) {
//   Locale locale = Localizations.localeOf(context);
//   var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
//   return format;
// }
