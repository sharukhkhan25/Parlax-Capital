import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';
import 'package:projectone/Screen-s/SelectedPlanName.dart';

class HomeInvest extends StatefulWidget {
  const HomeInvest({Key? key}) : super(key: key);

  @override
  State<HomeInvest> createState() => _HomeInvestState();
}

class _HomeInvestState extends State<HomeInvest> {
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
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 80,
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
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "Invest",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100.0),
                                // image: const DecorationImage(
                                //   image: AssetImage('images/profile.jpg'),
                                //   fit: BoxFit.cover,
                                // ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 43, 43, 75),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    height: 23,
                                    width: 23,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'images/investmenticon1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 30,
                                            right: 10,
                                          ),
                                          width: 60,
                                          child: const Text(
                                            "Invested",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 5,
                                            // left: 9,
                                          ),
                                          width: 70,
                                          child: const Text(
                                            "# 34,906,89",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 55,
                              width: 1,
                              color: Colors.grey,
                            ),
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 43, 43, 75),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 5),
                                    height: 23,
                                    width: 23,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('images/investment.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 30,
                                            right: 10,
                                          ),
                                          width: 60,
                                          child: const Text(
                                            "Profit",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 5,
                                          ),
                                          width: 70,
                                          child: const Text(
                                            "# 14,907,65",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                            ),
                                            textAlign: TextAlign.left,
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
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                      "Make a deposit",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanName(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 33, 57),
                              Color.fromARGB(255, 2, 2, 107),
                            ],
                          ),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/orange.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              transformAlignment: Alignment.bottomCenter,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.only(
                                        bottom: 63, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 110, 110, 110)),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 15, left: 3),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.67,
                                          child: const Text(
                                            "ASTEROID PLAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "+0.6% Daily +3% Weekly +12% Monthly",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Duration: 1 month",
                                            style:
                                                TextStyle(color: Colors.white),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanName(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 33, 57),
                              Color.fromARGB(255, 2, 2, 107),
                            ],
                          ),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/purple.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              transformAlignment: Alignment.bottomCenter,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.only(
                                        bottom: 63, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 110, 110, 110)),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 15, left: 3),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.67,
                                          child: const Text(
                                            "ASTEROID PLAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "+0.6% Daily +3% Weekly +12% Monthly",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Duration: 3 month",
                                            style:
                                                TextStyle(color: Colors.white),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanName(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 33, 57),
                              Color.fromARGB(255, 2, 2, 107),
                            ],
                          ),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/blue.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              transformAlignment: Alignment.bottomCenter,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.only(
                                        bottom: 63, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 110, 110, 110)),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 15, left: 3),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.67,
                                          child: const Text(
                                            "ASTEROID PLAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "+0.6% Daily +3% Weekly +12% Monthly",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Duration: 6 month",
                                            style:
                                                TextStyle(color: Colors.white),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanName(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 33, 57),
                              Color.fromARGB(255, 2, 2, 107),
                            ],
                          ),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/red.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              transformAlignment: Alignment.bottomCenter,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.only(
                                        bottom: 63, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 110, 110, 110)),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 15, left: 3),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.67,
                                          child: const Text(
                                            "ASTEROID PLAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "+0.6% Daily +3% Weekly +12% Monthly",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Duration: 9 month",
                                            style:
                                                TextStyle(color: Colors.white),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanName(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 22, 33, 57),
                              Color.fromARGB(255, 2, 2, 107),
                            ],
                          ),
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: MediaQuery.of(context).size.width * 1,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'images/yellow.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              transformAlignment: Alignment.bottomCenter,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: const EdgeInsets.only(
                                        bottom: 63, left: 5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.0),
                                        color: const Color.fromARGB(
                                            255, 110, 110, 110)),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          height: 18,
                                          width: 18,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100.0)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 15, left: 3),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.67,
                                          child: const Text(
                                            "ASTEROID PLAN",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Container(
                                          child: const Text(
                                            "+0.6% Daily +3% Weekly +12% Monthly",
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontSize: 13),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Container(
                                          child: const Text(
                                            "Duration: 12 month",
                                            style:
                                                TextStyle(color: Colors.white),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
