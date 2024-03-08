import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

import 'InvestmentDeActive.dart';

class InvestmentActive extends StatefulWidget {
  const InvestmentActive({Key? key}) : super(key: key);

  @override
  State<InvestmentActive> createState() => _InvestmentActiveState();
}

class _InvestmentActiveState extends State<InvestmentActive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
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
              height: 130,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 109, 219, 255),
                    Color.fromARGB(255, 2, 72, 237),
                  ],
                ),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          size: 40,
                        ),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Investment",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    padding:const EdgeInsets.only(left: 30, top: 20),
                    child: const Text(
                      "Active",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  Container(
                    padding:const EdgeInsets.only(left: 70, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const InvestmentDeActive(),
                          ),
                        );
                      },
                      child: const Text(
                        "Inactive",
                        style: TextStyle(
                            color: Color.fromARGB(255, 185, 184, 184),
                            fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * 0.88,
                    alignment: Alignment.center,
                    color: const Color.fromARGB(255, 171, 170, 170),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 1,
                          width: 60,
                          color: const Color.fromARGB(255, 255, 162, 0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IT IS A STATUS PENDING OF TEMPLATE
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.88,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 19, 68),
                      border: Border.all(
                          color: const Color.fromARGB(255, 105, 105, 105)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 140,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 44, 61, 99),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: const Color.fromARGB(255, 96, 96, 96),
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
                                          image:
                                              AssetImage('images/profile.jpg'),
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
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.67,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "Status: pending",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                        child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(right: 30),
                                          child: const Text(
                                            "ASTEROID",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "#30,000,00 USD",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: const Text(
                                              "Date start: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 5, right: 5),
                                            child: const Text(
                                              "Date end: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 0.5,
                                margin: const EdgeInsets.only(top: 2),
                                width: MediaQuery.of(context).size.width * 1,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 60,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              right: 30,
                                              top: 5,
                                            ),
                                            child: const Text(
                                              "Profit Per Day",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 45),
                                            child: const Text(
                                              "Total Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            child: const Text(
                                              "Remaining Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#6",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#588.2",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#352.12",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IT IS A STATUS COMPLETED TEMPLATE
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.88,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 19, 68),
                      border: Border.all(
                          color: const Color.fromARGB(255, 105, 105, 105)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 140,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 44, 61, 99),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: const Color.fromARGB(255, 96, 96, 96),
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
                                          image:
                                              AssetImage('images/profile.jpg'),
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
                          margin: const EdgeInsets.only(top: 5),
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.67,
                          decoration: const BoxDecoration(
                              ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "Status: Completed",
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                        child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 30),
                                          child: const Text(
                                            "Universe",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "#30,000,00 USD",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            child: const Text(
                                              "Date start: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 5, right: 5),
                                            child: const Text(
                                              "Date end: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 0.5,
                                margin: const EdgeInsets.only(top: 2),
                                width: MediaQuery.of(context).size.width * 1,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 60,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              right: 30,
                                              top: 5,
                                            ),
                                            child: const Text(
                                              "Profit Per Day",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 45),
                                            child: const Text(
                                              "Total Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            child: const Text(
                                              "Remaining Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin: EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#6",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin: EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#588.2",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin: EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#352.12",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 191, 189, 189),
                                                  fontSize: 9),
                                              textAlign: TextAlign.left,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // IT IS A STATUS CANCELLED OF TEMPLATE
                  Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.88,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 19, 68),
                      border: Border.all(
                          color: const Color.fromARGB(255, 105, 105, 105)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 140,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 44, 61, 99),
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: const EdgeInsets.only(bottom: 50),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: const Color.fromARGB(255, 96, 96, 96),
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
                                          image:
                                              AssetImage('images/profile.jpg'),
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
                          height: MediaQuery.of(context).size.height * 1,
                          width: MediaQuery.of(context).size.width * 0.67,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 8),
                                child: const Text(
                                  "Status: Cancelled",
                                  style: TextStyle(
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Row(
                                  children: [
                                    Container(
                                        child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(right: 30),
                                          child: const Text(
                                            "ASTEROID",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "#30,000,00 USD",
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 225, 225, 225),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        )
                                      ],
                                    )),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            // color: Colors.red,
                                            child: const Text(
                                              "Date start: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 5, right: 5),
                                            child: const Text(
                                              "Date end: 07-07-2022",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 8,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 0.5,
                                margin: const EdgeInsets.only(top: 2),
                                width: MediaQuery.of(context).size.width * 1,
                                color: Colors.grey,
                              ),
                              Container(
                                height: 60,
                                child: Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              right: 30,
                                              top: 5,
                                            ),
                                            child: const Text(
                                              "Profit Per Day",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                right: 45),
                                            child: const Text(
                                              "Total Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 15),
                                            child: const Text(
                                              "Remaining Profit",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 225, 225, 225),
                                                  fontSize: 10),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#6",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            height: 15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#588.2",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            margin:
                                                const EdgeInsets.only(left: 4),
                                            child: const Text(
                                              "#352.12",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 191, 189, 189),
                                                fontSize: 9,
                                              ),
                                              textAlign: TextAlign.left,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
