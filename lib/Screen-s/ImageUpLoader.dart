import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/ConIUL.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class ImageUpLoader extends StatefulWidget {
  const ImageUpLoader({Key? key}) : super(key: key);

  @override
  State<ImageUpLoader> createState() => _ImageUpLoaderState();
}

class _ImageUpLoaderState extends State<ImageUpLoader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 109, 219, 255),
                        Color.fromARGB(255, 2, 72, 237),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 1,
                        width: 1,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: const Color.fromARGB(255, 40, 64, 84),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Menubar(),
                              ),
                            );
                          },
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Text(
                    "Image",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: const Text(
                    "Select your image from store or album",
                    style: TextStyle(
                      color: Color.fromARGB(255, 172, 171, 171),
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 43, 43, 75),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                ),
                                child: GestureDetector(
                                  // onTap: () {
                                  //   Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) =>
                                  //           const HomeInvest(),
                                  //     ),
                                  //   );
                                  // },
                                  child: const Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: const Text(
                            "Upload profile image",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 60),
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: TextButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConIUL(),
                          ),
                        );
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
