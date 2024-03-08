import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/ConSC.dart';
import 'package:projectone/Screen-s/Menubar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
                            child: const Image(
                              image: AssetImage('images/PureLogo.png'),
                            ),
                          ),
                          Container(
                            height: 1,
                            width: 1,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: MediaQuery.of(context).size.width * 0.9,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Change Password",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "New Password",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // labelText: 'New Password',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Confirm New Password",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextFormField(
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          icon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 130),
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
                            "Change Password",
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
