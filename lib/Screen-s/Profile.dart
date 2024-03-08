import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/ConSC.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        decoration: const BoxDecoration(color: Colors.black),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Image(
                        image: AssetImage('images/PureLogo.png'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'Edit First Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'Edit Last Name',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'Edit e-mail',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 100),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextButton(
                        onPressed: () {},
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SaveChanges(),
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
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
