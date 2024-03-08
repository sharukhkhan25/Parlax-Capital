import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
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
              height: 120,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Menubar(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Transaction Histroy",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 1,
                        )
                      ],
                    ),
                  ),
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
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 40,
                          child: const Text(
                            "All",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 90,
                          child: const Text(
                            "Withdraw",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 90,
                          child: const Text(
                            "Investment",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        Container(
                          width: 60,
                          child: const Text(
                            "Referal",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 1,
                          width: 30,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 1,
                          width: 110,
                        ),
                        Container(
                          height: 1,
                          width: 90,
                        ),
                        Container(
                          height: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text(
                      "Yesterday",
                      style: TextStyle(
                        color: Color.fromARGB(255, 232, 232, 232),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "Bitcoin (BTC)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Cancelled",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_downward_sharp,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Investment",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "Etherium (ETH)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Cancelled",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_downward_sharp,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Investment",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 45),
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: const Text(
                      "21 October 2022",
                      style: TextStyle(
                        color: Color.fromARGB(255, 232, 232, 232),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "Bitcoin (BTC)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Cancelled",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_downward_sharp,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "USDT (TRC20)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Confirmed",
                                                      style: TextStyle(
                                                        color: Color.fromARGB(
                                                          255,
                                                          143,
                                                          243,
                                                          104,
                                                        ),
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons.arrow_upward,
                                                      color: Color.fromARGB(
                                                        255,
                                                        143,
                                                        243,
                                                        104,
                                                      ),
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Referal",
                                  style: TextStyle(
                                    color: Color.fromARGB(
                                      255,
                                      143,
                                      243,
                                      104,
                                    ),
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "litecoin (LTC)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Pending",
                                                      style: TextStyle(
                                                          color: Colors.yellow),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons.arrow_upward,
                                                      color: Colors.yellow,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "Bitcoin (BTC)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Cancelled",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_downward_sharp,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Investment",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
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
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "Etherium (ETH)",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.only(
                                                top: 5,
                                                left: 7,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    child: const Text(
                                                      "Cancelled",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                      ),
                                                      textAlign: TextAlign.left,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    child: const Icon(
                                                      Icons
                                                          .arrow_downward_sharp,
                                                      color: Colors.red,
                                                      size: 20,
                                                    ),
                                                  )
                                                ],
                                              )),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                width: 120,
                                child: const Text(
                                  "#2349.98",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                              Container(
                                width: 120,
                                margin: const EdgeInsets.only(top: 5),
                                child: const Text(
                                  "Investment",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
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
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 1,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
