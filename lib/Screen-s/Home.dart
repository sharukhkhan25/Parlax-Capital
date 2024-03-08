import 'package:flutter/material.dart';
import 'package:projectone/ButtonScreens/ToggleButton.dart';
import 'package:projectone/Screen-s/HomeInvest.dart';
import 'package:projectone/Screen-s/ImageUpLoader.dart';
import 'package:projectone/Screen-s/Notifications.dart';
import 'package:projectone/Screen-s/TransactionHistory.dart';
import 'package:projectone/Screen-s/withdraw.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromARGB(255, 1, 1, 60),
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 109, 219, 255),
                    Color.fromARGB(255, 2, 72, 237),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text(
                            "Welcome [user]",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const NotificationScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.white,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ImageUpLoader(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 81, 186, 221),
                          Color.fromARGB(255, 2, 66, 215),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 90,
                                child: const Text(
                                  "Balance",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 149, 205, 252),
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                height: 25,
                                child: const Text(
                                  "#5,678,97",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 90,
                                child: const Text(
                                  "Withdrawn",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 149, 205, 252),
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                height: 25,
                                child: const Text(
                                  "#4,906,89",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 90,
                          child: const Image(
                            image: AssetImage('images/PureLogo.png'),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Container(
                                height: 25,
                                width: 100,
                                child: const Text(
                                  "Investments",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 149, 205, 252),
                                    fontSize: 12,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                height: 25,
                                child: const Text(
                                  "#34,906,89",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 100,
                                child: const Text(
                                  "Profit",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 149, 205, 252),
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                height: 25,
                                child: const Text(
                                  "#14,907,65",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text(
                            "Compound Interest",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 50,
                          child: const ToggleButton(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 109, 219, 255),
                                      Color.fromARGB(255, 2, 72, 237),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TransactionScreen(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.compare_arrows,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  child: const Text(
                                "Transactions",
                                style: TextStyle(color: Colors.white),
                              ))
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeInvest(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.attach_money,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: const Text(
                                  "Invest",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Withdraw(),
                                      ),
                                    );
                                  },
                                  child: const Icon(
                                    Icons.file_download_outlined,
                                    color: Colors.grey,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: const Text(
                                  "WithDraw",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 44, 61, 99),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 96, 96, 96),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'images/profile.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      width: 110,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 110,
                                            child: const Text(
                                              "USDT-TRC20",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            margin: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            child: const Text(
                                              "07-14-2022",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                          255,
                                          44,
                                          61,
                                          99,
                                        ),
                                      ),
                                      child: const Text(
                                        "i",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Container(
                                width: 95,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 95,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "WithDrawals",
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 30),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 44, 61, 99),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 96, 96, 96),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'images/profile.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      width: 110,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 110,
                                            child: const Text(
                                              "USDT-TRC20",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            margin: const EdgeInsets.only(
                                              top: 5,
                                            ),
                                            child: const Text(
                                              "07-14-2022",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 44, 61, 99),
                                      ),
                                      child: const Text(
                                        "i",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Container(
                                width: 95,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 95,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Investment",
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 44, 61, 99),
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 96, 96, 96),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100.0),
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    'images/profile.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 40),
                                      width: 110,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 110,
                                            child: const Text(
                                              "USDT-TRC20",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 110,
                                            margin: const EdgeInsets.only(
                                              top: 5,
                                              ),
                                            child: const Text(
                                              "07-14-2022",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 30),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 44, 61, 99),
                                      ),
                                      child: const Text(
                                        "i",
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontStyle: FontStyle.italic,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Container(
                                width: 95,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 95,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Refferals",
                                  style: TextStyle(color: Colors.blue),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
