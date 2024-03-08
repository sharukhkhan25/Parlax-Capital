// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Menubar.dart';
import 'package:projectone/Screen-s/SignUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
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
          child: ListView(
            padding: const EdgeInsets.only(top: 150),
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Image(
                        image: AssetImage('images/PureLogo.png'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      margin: const EdgeInsets.only(top: 50),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.only(top: 6),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: const Text(
                        "Please provide your registered e-mail for login",
                        style: TextStyle(
                          fontSize: 12,
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
                          labelText: 'e-mail/username',
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
                        obscureText: true,

                        style: const TextStyle(color: Colors.white),
                        // ignore: deprecated_member_use
                        cursorColor: Theme.of(context).cursorColor,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10.0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(0, 0, 0, 0),
                                padding: const EdgeInsets.all(0),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 2),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(0)),
                              onPressed: () {},
                              child: const Text(
                                "Recover",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 0, 179, 255),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: TextButton(
                        onPressed: () {},
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
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.blue),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(0, 0, 0, 0),
                                padding: const EdgeInsets.all(0),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Don,t have an account?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 2),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SighnUp(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 20),
                                ),
                              )
                              ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: MediaQuery.of(context).size.width * 0.9,
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
