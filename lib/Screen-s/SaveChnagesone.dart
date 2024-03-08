import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class SaveChangesone extends StatefulWidget {
  const SaveChangesone({Key? key}) : super(key: key);

  @override
  State<SaveChangesone> createState() => _SaveChangesoneState();
}

class _SaveChangesoneState extends State<SaveChangesone> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 20, 20, 20),
              Color.fromARGB(255, 7, 1, 83)
            ],
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 200),
            width: 300,
            child: Column(
              children: [
                Container(
                  width: 250,
                  child: const Image(
                    image: AssetImage('images/PureLogo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Image(
                    image: AssetImage('images/congratulations.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Changes were made Succesfully",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Menubar(),
                          ),
                        );
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
