// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class SaveChanges extends StatefulWidget {
  const SaveChanges({Key? key}) : super(key: key);

  @override
  State<SaveChanges> createState() => _SaveChangesState();
}

class _SaveChangesState extends State<SaveChanges> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Menubar(),
      ),
    );
  }

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
                  margin: EdgeInsets.only(top: 10),
                  child: const Text(
                    "Changes were made Succesfully",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
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
