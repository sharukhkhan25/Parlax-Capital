import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  child: Row(
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
                                ),
                              ),
                            ),
                            Container(
                              child: const Text(
                                "Notifications",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            Container(
                              child: const Icon(
                                Icons.note_alt_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
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
                              child: Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 15),
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
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
                                                            10)),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 100,
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
                                                              bottom: 27,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        86,
                                                                        156,
                                                                        214),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      100.0,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            25,
                                                                        width:
                                                                            25,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              86,
                                                                              156,
                                                                              214),
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                            100.0,
                                                                          ),
                                                                          image:
                                                                              const DecorationImage(
                                                                            image:
                                                                                AssetImage('images/PureLogo.png'),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Container(
                                                                  height: 130,
                                                                  child: Column(
                                                                    children: [
                                                                      Container(
                                                                        margin:
                                                                            const EdgeInsets.only(
                                                                          top:
                                                                              16,
                                                                          right:
                                                                              15,
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "BTC Received",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 18),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            130,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              child: const Text(
                                                                                "246.09 btc",
                                                                                style: TextStyle(color: Colors.grey, fontSize: 15),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Container(
                                                                              child: const Icon(
                                                                                Icons.arrow_upward,
                                                                                color: Colors.green,
                                                                                size: 20,
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
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 22),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "2 days ago",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
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
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
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
                                                            10)),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 100,
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
                                                              bottom: 27,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        86,
                                                                        156,
                                                                        214),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      100.0,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            25,
                                                                        width:
                                                                            25,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              86,
                                                                              156,
                                                                              214),
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                            100.0,
                                                                          ),
                                                                          image:
                                                                              const DecorationImage(
                                                                            image:
                                                                                AssetImage('images/PureLogo.png'),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
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
                                                                            const EdgeInsets.only(
                                                                          top:
                                                                              16,
                                                                          right:
                                                                              15,
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "BTC Pending",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 18),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            130,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              child: const Text(
                                                                                "246.09 btc",
                                                                                style: TextStyle(color: Colors.grey, fontSize: 15),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Container(
                                                                              child: const Icon(
                                                                                Icons.arrow_downward_rounded,
                                                                                color: Colors.red,
                                                                                size: 20,
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
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 22),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "4 days ago",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
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
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
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
                                                            10)),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 100,
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
                                                              bottom: 27,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        86,
                                                                        156,
                                                                        214),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      100.0,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            25,
                                                                        width:
                                                                            25,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              86,
                                                                              156,
                                                                              214),
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                            100.0,
                                                                          ),
                                                                          image:
                                                                              const DecorationImage(
                                                                            image:
                                                                                AssetImage('images/PureLogo.png'),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
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
                                                                            const EdgeInsets.only(
                                                                          top:
                                                                              16,
                                                                          right:
                                                                              15,
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "BWK Receives",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 18),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            130,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              child: const Text(
                                                                                "246.09 btc",
                                                                                style: TextStyle(color: Colors.grey, fontSize: 15),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Container(
                                                                              child: const Icon(
                                                                                Icons.arrow_downward_rounded,
                                                                                color: Colors.green,
                                                                                size: 20,
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
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 22),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "1 week ago",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
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
                Container(
                  child: Stack(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 110,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                height: 100,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      height: 100,
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
                                                              bottom: 27,
                                                            ),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 40,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color
                                                                            .fromARGB(
                                                                        255,
                                                                        86,
                                                                        156,
                                                                        214),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                      100.0,
                                                                    ),
                                                                  ),
                                                                  child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      Container(
                                                                        height:
                                                                            25,
                                                                        width:
                                                                            25,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color: const Color.fromARGB(
                                                                              255,
                                                                              86,
                                                                              156,
                                                                              214),
                                                                          borderRadius:
                                                                              BorderRadius.circular(
                                                                            100.0,
                                                                          ),
                                                                          image:
                                                                              const DecorationImage(
                                                                            image:
                                                                                AssetImage('images/PureLogo.png'),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
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
                                                                            const EdgeInsets.only(
                                                                          top:
                                                                              16,
                                                                          right:
                                                                              15,
                                                                        ),
                                                                        child:
                                                                            const Text(
                                                                          "BTC Transfered",
                                                                          style: TextStyle(
                                                                              color: Colors.white,
                                                                              fontSize: 18),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        width:
                                                                            130,
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Container(
                                                                              child: const Text(
                                                                                "246.09 btc",
                                                                                style: TextStyle(color: Colors.grey, fontSize: 15),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(
                                                                              width: 10,
                                                                            ),
                                                                            Container(
                                                                              child: const Icon(
                                                                                Icons.arrow_forward,
                                                                                color: Colors.green,
                                                                                size: 20,
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
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                        .only(
                                                                    bottom: 22),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child:
                                                                      const Text(
                                                                    "2 weeks ago",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
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
}
