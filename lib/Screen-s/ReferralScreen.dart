import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class RefferalScreen extends StatefulWidget {
  const RefferalScreen({Key? key}) : super(key: key);

  @override
  State<RefferalScreen> createState() => _RefferalScreenState();
}

class _RefferalScreenState extends State<RefferalScreen> {
  final items = [
    'E-mail123@mail1.com',
    'E-mail321@mail2.com',
    'E-mail112@mail3.com',
    'E-mail132@mail4.com'
  ];
  String? value;
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
                                "Refferals",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            Container(
                              height: 4,
                              width: 0,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
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
                              margin: EdgeInsets.only(top: 25),
                              // height: 60,
                              child: const Text(
                                "refferals link:",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: const Text(
                                "https://app.parlaxcapital.com/W3hR56",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 7),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              width: 55,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 109, 219, 255),
                                      Color.fromARGB(255, 2, 72, 237),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Copy",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
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
                  margin: EdgeInsets.only(top: 5),
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 171, 170, 170),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 1,
                              width: 68,
                              color: const Color.fromARGB(255, 255, 162, 0),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: const Text(
                                "Search User:",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Container(
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(255, 50, 50, 74),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        iconSize: 35,
                                        isExpanded: true,
                                        value: value,
                                        items:
                                            items.map(buildMenuItem).toList(),
                                        onChanged: (value) =>
                                            setState(() => this.value = value),
                                      ),
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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/jungla.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color:
                                                Color.fromARGB(255, 1, 1, 60),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'images/refferalsblue.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 22,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          100.0,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      height: 80,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 6,
                                                            ),
                                                            width: 110,
                                                            child: const Text(
                                                              "User name",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 110,
                                                            child: const Text(
                                                              "User Mail",
                                                              style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        211,
                                                                        211,
                                                                        211),
                                                                fontSize: 16,
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
                                                margin: const EdgeInsets.only(
                                                    bottom: 22),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: const Icon(
                                                        Icons.arrow_upward,
                                                        color: Colors.green,
                                                        size: 19,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: const Text(
                                                        "Referal level",
                                                        style: TextStyle(
                                                          color: Colors.green,
                                                        ),
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
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 80,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color:
                                                Color.fromARGB(255, 1, 1, 60),
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'images/refferalsblue.png'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 22,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      width: 30,
                                                      decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          100.0,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      height: 80,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: 110,
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 6,
                                                            ),
                                                            child: const Text(
                                                              "User name",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 110,
                                                            child: const Text(
                                                              "User Mail",
                                                              style: TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          211,
                                                                          211,
                                                                          211),
                                                                  fontSize: 16),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(bottom: 22),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      child: const Icon(
                                                        Icons.arrow_upward,
                                                        color: Colors.green,
                                                        size: 19,
                                                      ),
                                                    ),
                                                    Container(
                                                      child: const Text(
                                                        "Referal level",
                                                        style: TextStyle(
                                                          color: Colors.green,
                                                        ),
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
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 140,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 80,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 80,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              1,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 1, 1, 60),
                                                        image:
                                                            const DecorationImage(
                                                          image: AssetImage(
                                                              'images/refferalsblue.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                              bottom: 22,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 30,
                                                                  width: 30,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .black,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      100.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Container(
                                                                  height: 80,
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            110,
                                                                        margin:
                                                                            const EdgeInsets.only(
                                                                          top:
                                                                              6,
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "User name",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            110,
                                                                        child:
                                                                            const Text(
                                                                          "User Mail",
                                                                          style: TextStyle(
                                                                              color: Color.fromARGB(255, 211, 211, 211),
                                                                              fontSize: 16),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 22),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Icon(
                                                                    Icons
                                                                        .arrow_upward,
                                                                    color: Colors
                                                                        .green,
                                                                    size: 19,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "Referal level",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .green,
                                                                    ),
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
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
      );
}
